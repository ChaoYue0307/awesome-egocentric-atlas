#!/usr/bin/env ruby
# frozen_string_literal: true

# Surfaces catalog-maintenance debt so it can be triaged periodically:
#   * open/request/partial resources verified more than 90 days ago,
#   * watch/partial resources without a release_note,
#   * open datasets without a license / license_url.
#
# Writes a markdown report to ARGV[0] (default: freshness-report.md) and prints
# "count=<n>" so a workflow can decide whether to open an issue. Always exits 0.
#
# Usage: ruby scripts/freshness.rb [output.md]

require_relative "lib/catalog_artifacts"
require "date"

out_path = ARGV[0] || "freshness-report.md"
ego = CatalogArtifacts.resources.reject { |e| e["scope"] == "adjacent" }
today = Date.today
cutoff = today - 90

def names(entries, limit = 40)
  shown = entries.first(limit).map { |e| "`#{e['name']}`" }.join(", ")
  entries.length > limit ? "#{shown}, …" : shown
end

stale = ego.select do |e|
  next false unless %w[open request partial].include?(e["status"])
  next false unless e["verified_at"]

  (Date.parse(e["verified_at"].to_s) < cutoff rescue false)
end

missing_release_note = ego.select do |e|
  %w[watch partial].include?(e["status"]) && e["release_note"].to_s.strip.empty?
end

open_datasets_missing_license = ego.select do |e|
  e["kind"] == "dataset" && e["status"] == "open" &&
    (e["license"].to_s.strip.empty? || e["license_url"].to_s.strip.empty?)
end

sections = [
  ["Verified more than 90 days ago (open/request/partial)", stale],
  ["watch/partial resources without a release_note", missing_release_note],
  ["Open datasets without license + license_url", open_datasets_missing_license]
]

total = sections.sum { |(_, list)| list.length }

lines = []
lines << "# Catalog freshness report (#{today})"
lines << ""
lines << "#{ego.length} egocentric resources scanned. #{total} maintenance item(s) flagged.\n"
sections.each do |label, list|
  next if list.empty?

  lines << "## #{label} — #{list.length}"
  lines << ""
  lines << names(list)
  lines << ""
end
lines << "_This is curation debt, not a build failure; triage as time allows._" if total.positive?

File.write(out_path, lines.join("\n") + "\n")
puts "count=#{total}"
