# frozen_string_literal: true

require "minitest/autorun"
require_relative "lib/catalog_artifacts"

class CatalogArtifactsTest < Minitest::Test
  def entry
    {
      "name" => "Test resource", "kind" => "model", "status" => "partial",
      "url" => "https://example.org/", "tasks" => ["video-qa"],
      "paper" => "https://example.org/paper", "data" => "https://example.org/data",
      "weights" => "https://example.org/weights", "created_by" => "Research team",
      "released_by" => "Release organization", "verified_at" => "2026-10-29",
      "release_note" => "Annotations only, no video", "access" => "Source approval required",
      "derived_from" => ["Source A", "Source B"], "scope_note" => "Human capture"
    }
  end

  def test_provenance_survives_normalization
    normalized = CatalogArtifacts.normalize_resource(entry, "video-qa" => "question-answering")
    %w[created_by released_by verified_at data weights release_note access derived_from scope_note].each do |field|
      assert_equal entry[field], normalized[field], field
    end
    assert_equal ["question-answering"], normalized["task_families"]
  end

  def test_scope_default_and_adjacent_are_explicit
    assert_equal "egocentric", CatalogArtifacts.normalize_resource(entry, {})["scope"]
    assert_equal "adjacent", CatalogArtifacts.normalize_resource(entry.merge("scope" => "adjacent"), {})["scope"]
  end

  def test_missing_provenance_is_not_invented
    normalized = CatalogArtifacts.normalize_resource({ "name" => "Legacy", "tasks" => [] }, {})
    refute normalized.key?("created_by")
    refute normalized.key?("verified_at")
    refute normalized.key?("weights")
  end

  def test_both_csv_exports_preserve_provenance_and_quoting
    normalized = CatalogArtifacts.normalize_resource(entry, {})
    CatalogArtifacts.stub(:site_resources, [normalized]) do
      [CatalogArtifacts.csv, CatalogArtifacts.papers_csv].each do |text|
        table = CSV.parse(text, headers: true)
        assert_equal table.headers.uniq, table.headers
        assert_equal "egocentric", table[0]["scope"]
        assert_equal entry["release_note"], table[0]["release_note"]
        assert_equal entry["weights"], table[0]["weights"]
        assert_equal entry["created_by"], table[0]["created_by"]
        assert_equal "Source A; Source B", table[0]["derived_from"]
      end
    end
  end

  def test_papers_export_excludes_resources_without_papers
    rows = [entry, entry.merge("name" => "No paper", "paper" => "")]
    CatalogArtifacts.stub(:site_resources, rows) do
      assert_equal ["Test resource"], CSV.parse(CatalogArtifacts.papers_csv, headers: true).map { |r| r["name"] }
    end
  end

  def payload_for(meta)
    CatalogArtifacts.stub(:catalog, { "meta" => meta, "resources" => [] }) do
      CatalogArtifacts.stub(:site_resources, []) do
        CatalogArtifacts.stub(:milestone_link_layout, []) { CatalogArtifacts.site_payload }
      end
    end
  end

  def test_revision_date_does_not_advance_audit_date
    payload = payload_for("title" => "Atlas", "description" => "Catalog",
      "last_major_audit" => "2026-08-23", "last_updated" => "2026-10-29", "status_legend" => {})
    assert_equal "2026-08-23", payload["meta"]["last_major_audit"]
    assert_equal "2026-10-29", payload["meta"]["last_updated"]
  end

  def test_legacy_catalog_falls_back_to_audit_date
    payload = payload_for("title" => "Atlas", "description" => "Catalog",
      "last_major_audit" => "2026-08-23", "status_legend" => {})
    assert_equal "2026-08-23", payload["meta"]["last_updated"]
  end

  def test_context_table_counts_catalogued_surveys_but_not_background_citations
    readme = "## Surveys, Papers, and Context\n| [Survey](https://example.org/) | Context |\n" \
      "| [Background citation](https://example.org/paper) | Context |\n## Workshops and Challenges\n"
    CatalogArtifacts.stub(:resources, [{ "name" => "Survey", "kind" => "survey" }]) do
      assert_equal ["Survey"], CatalogArtifacts.readme_resource_labels(readme)
    end
  end

  def test_readme_table_rejects_shifted_columns_and_stale_status
    readme = "| Resource | Status |\n| :--- | :--- |\n" \
      "| [Test resource](https://example.org) | open |\n" \
      "| Extra column | partial | code |\n"
    errors = CatalogArtifacts.readme_table_errors(readme, [entry], {})
    assert_equal 2, errors.length
    assert_match(/status/, errors.first)
    assert_match(/3 table cells/, errors.last)
  end

  def test_readme_table_accepts_aliases_and_escaped_pipes
    readme = "| Resource | Description | Status |\n| :--- | :--- | :--- |\n" \
      "| [Alias](https://example.org) | A \\| B | `partial` |\n"
    assert_empty CatalogArtifacts.readme_table_errors(readme, [entry], "Test resource" => ["Alias"])
  end
end
