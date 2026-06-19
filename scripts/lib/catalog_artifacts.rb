# frozen_string_literal: true

require "csv"
require "date"
require "fileutils"
require "json"
require "set"
require "yaml"

module CatalogArtifacts
  ROOT = File.expand_path("../..", __dir__)
  CATALOG = File.join(ROOT, "data", "resources.yml")
  TAXONOMY = File.join(ROOT, "data", "taxonomy.yml")
  README = File.join(ROOT, "README.md")
  README_ALIASES = File.join(ROOT, "data", "readme_aliases.yml")
  SITE_DATA = File.join(ROOT, "site-data.json")
  CSV_OUTPUT = File.join(ROOT, "awesome-egocentric-atlas.csv")
  HF_HEADER = File.join(ROOT, "huggingface", "dataset_card_header.txt")

  CSV_COLUMNS = %w[name kind released venue status scope year url paper code license scale tasks modalities].freeze
  STATUS_ORDER = %w[open watch partial benchmark request].freeze
  KIND_ORDER = %w[dataset benchmark model toolkit collection].freeze

  LANES = {
    "foundation-video" => {
      "label" => "Foundation Video",
      "families" => %w[foundation-and-representation video-language generation-and-world-models],
      "description" => "large-scale ego video, representation learning, and video-language pretraining"
    },
    "procedure-action" => {
      "label" => "Procedure and Action",
      "families" => %w[action-and-procedure skills-and-quality],
      "description" => "actions, procedures, anticipation, mistakes, and skill assessment"
    },
    "hands-3d" => {
      "label" => "Hands, Objects, and 3D",
      "families" => %w[hand-object-interaction pose-and-body tracking detection-segmentation three-d-and-scene],
      "description" => "hands, contact, pose, tracking, segmentation, and scene geometry"
    },
    "memory-reasoning" => {
      "label" => "Memory and Reasoning",
      "families" => %w[question-answering memory-and-long-context reasoning-intent-planning grounding-localization],
      "description" => "long-context QA, episodic memory, grounding, planning, and intent"
    },
    "robotics-vla" => {
      "label" => "Robotics and VLA",
      "families" => %w[robotics-and-vla],
      "description" => "human-to-robot transfer, manipulation, imitation, and VLA data"
    },
    "ar-wearables" => {
      "label" => "AR and Wearables",
      "families" => %w[ar-sensing-navigation audio-and-social assistance-and-agents],
      "description" => "AR glasses, wearable sensors, audio, social interaction, and assistants"
    }
  }.freeze

  README_RESOURCE_SECTIONS = [
    [/^## Dataset Atlas$/, /^## Benchmarks and Derived Annotations$/],
    [/^## Benchmarks and Derived Annotations$/, /^## Models, Tools, and Baselines$/],
    [/^## Models, Tools, and Baselines$/, /^## Adjacent and Related Resources$/],
    [/^## Adjacent and Related Resources$/, /^## Surveys, Papers, and Context$/]
  ].freeze

  module_function

  def catalog
    YAML.load_file(CATALOG)
  end

  def taxonomy
    YAML.load_file(TAXONOMY)
  end

  def resources
    catalog.fetch("resources")
  end

  def task_family_lookup(taxonomy_data = taxonomy)
    lookup = {}
    taxonomy_data.fetch("task_families", {}).each do |family, body|
      lookup[family] = family
      Array(body["aliases"]).each { |token| lookup[token] = family }
    end
    lookup
  end

  def normalize_resource(entry, task_lookup = task_family_lookup)
    tasks = Array(entry["tasks"])
    families = tasks.map { |task| task_lookup[task] || task }.uniq

    {
      "name" => entry["name"],
      "kind" => entry["kind"],
      "released" => entry["released"],
      "venue" => entry["venue"],
      "year" => entry["year"],
      "status" => entry["status"],
      "scope" => entry["scope"] || "egocentric",
      "url" => entry["url"],
      "paper" => entry["paper"],
      "code" => entry["code"],
      "scale" => entry["scale"],
      "tasks" => tasks,
      "task_families" => families,
      "modalities" => Array(entry["modalities"]),
      "license" => entry["license"],
      "license_url" => entry["license_url"]
    }.delete_if { |_key, value| value.nil? || value == [] }
  end

  def site_resources
    lookup = task_family_lookup
    resources.map { |entry| normalize_resource(entry, lookup) }
  end

  def egocentric_resources(normalized = site_resources)
    normalized.select { |entry| entry["scope"] == "egocentric" }
  end

  def tally(values)
    counts = Hash.new(0)
    values.each { |value| counts[value] += 1 if value }
    counts.sort.to_h
  end

  def summary(normalized = site_resources)
    ego = egocentric_resources(normalized)
    {
      "total_resources" => normalized.length,
      "egocentric_resources" => ego.length,
      "adjacent_resources" => normalized.length - ego.length,
      "kind_counts" => tally(ego.map { |entry| entry["kind"] }),
      "status_counts" => tally(ego.map { |entry| entry["status"] })
    }
  end

  def lane_payload(normalized = site_resources)
    ego = egocentric_resources(normalized)
    LANES.map do |id, lane|
      families = lane.fetch("families")
      count = ego.count { |entry| (Array(entry["task_families"]) & families).any? }
      {
        "id" => id,
        "label" => lane.fetch("label"),
        "description" => lane.fetch("description"),
        "families" => families,
        "count" => count
      }
    end
  end

  def site_payload
    catalog_data = catalog
    normalized = site_resources
    {
      "meta" => {
        "title" => catalog_data.fetch("meta").fetch("title"),
        "description" => catalog_data.fetch("meta").fetch("description"),
        "last_major_audit" => catalog_data.fetch("meta").fetch("last_major_audit"),
        "status_legend" => catalog_data.fetch("meta").fetch("status_legend"),
        "github_url" => "https://github.com/ChaoYue0307/awesome-egocentric-atlas",
        "pages_url" => "https://chaoyue0307.github.io/awesome-egocentric-atlas/",
        "huggingface_url" => "https://huggingface.co/datasets/cy0307/awesome-egocentric-atlas"
      },
      "summary" => summary(normalized),
      "lanes" => lane_payload(normalized),
      "resources" => normalized
    }
  end

  def site_json
    JSON.pretty_generate(site_payload) + "\n"
  end

  def csv
    CSV.generate do |out|
      out << CSV_COLUMNS
      resources.each do |entry|
        out << CSV_COLUMNS.map do |column|
          value = entry[column]
          value.is_a?(Array) ? value.join("; ") : value
        end
      end
    end
  end

  def number_word(value)
    words = {
      0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four",
      5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
      10 => "ten"
    }
    words.fetch(value, value.to_s)
  end

  def at_a_glance_sentence(summary_data = summary)
    kinds = summary_data.fetch("kind_counts")
    adjacent = summary_data.fetch("adjacent_resources")
    collection = kinds.fetch("collection", 0)
    collection_phrase = if collection == 1
      ", plus a Project Aria collection hub"
    elsif collection.positive?
      ", plus #{collection} collection hubs"
    else
      ""
    end

    "#{summary_data.fetch('egocentric_resources')} egocentric resources | " \
      "#{kinds.fetch('dataset', 0)} datasets, #{kinds.fetch('benchmark', 0)} benchmarks, " \
      "#{kinds.fetch('model', 0)} models, and #{kinds.fetch('toolkit', 0)} toolkits" \
      "#{collection_phrase} — across vision, robotics, memory, and AR. " \
      "#{number_word(adjacent).capitalize} related non-egocentric resources are listed separately."
  end

  def replace_once!(content, pattern, replacement, label)
    count = 0
    content.gsub!(pattern) do
      count += 1
      match = Regexp.last_match
      if replacement.is_a?(Proc)
        replacement.call(match)
      else
        replacement.gsub(/\\([0-9])/) { match[Regexp.last_match(1).to_i].to_s }
      end
    end
    raise "Could not update #{label}" if count.zero?

    content
  end

  def updated_readme(content = File.read(README, encoding: "UTF-8"))
    payload = site_payload
    meta = payload.fetch("meta")
    summary_data = payload.fetch("summary")
    text = content.dup
    replace_once!(text, %r{badge/resources-\d+-}, "badge/resources-#{summary_data.fetch('egocentric_resources')}-", "README resources badge")
    replace_once!(text, /\*\*Updated:\*\*\s*\d{4}-\d{2}-\d{2}\./, "**Updated:** #{meta.fetch('last_major_audit')}.", "README updated date")
    replace_once!(text, /^\| \d+ egocentric resources \| .+ \|$/, "| #{at_a_glance_sentence(summary_data)} |", "README at-a-glance row")
    text
  end

  def updated_index(content = File.read(File.join(ROOT, "index.html"), encoding: "UTF-8"))
    payload = site_payload
    meta = payload.fetch("meta")
    summary_data = payload.fetch("summary")
    kinds = summary_data.fetch("kind_counts")
    text = content.dup
    replace_once!(text, /(<dt data-stat="egocentric_resources">)\d+(<\/dt>)/, "\\1#{summary_data.fetch('egocentric_resources')}\\2", "index egocentric stat")
    KIND_ORDER.each do |kind|
      next if kind == "collection"

      replace_once!(text, /(<dt data-kind="#{Regexp.escape(kind)}">)\d+(<\/dt>)/, "\\1#{kinds.fetch(kind, 0)}\\2", "index #{kind} stat")
    end
    replace_once!(text, /(<span data-updated>Updated )\d{4}-\d{2}-\d{2}(<\/span>)/, "\\1#{meta.fetch('last_major_audit')}\\2", "index updated date")
    replace_once!(
      text,
      /(<!-- SEO:START[^>]*-->).*?(<!-- SEO:END -->)/m,
      ->(m) { "#{m[1]}\n#{seo_block}\n    #{m[2]}" },
      "index SEO block"
    )
    text
  end

  def html_escape(value)
    value.to_s.gsub("&", "&amp;").gsub("<", "&lt;").gsub(">", "&gt;").gsub('"', "&quot;")
  end

  # Generates the in-<head> SEO block: social meta tags plus a schema.org
  # DataCatalog (with one Dataset node per catalogued dataset) so search engines
  # and Google Dataset Search can index the atlas. Regenerated by build_artifacts.
  def seo_block(payload = site_payload)
    meta = payload.fetch("meta")
    title = meta.fetch("title")
    desc = meta.fetch("description")
    url = meta.fetch("pages_url")
    image = "#{url}assets/awesome-egocentric-atlas-cover.png"
    hf_csv = "#{meta.fetch('huggingface_url').chomp('/')}/resolve/main/awesome-egocentric-atlas.csv"
    ego = egocentric_resources(payload.fetch("resources"))
    datasets = ego.select { |entry| entry["kind"] == "dataset" }

    jsonld = {
      "@context" => "https://schema.org",
      "@type" => "DataCatalog",
      "name" => title,
      "description" => desc,
      "url" => url,
      "sameAs" => [meta.fetch("github_url"), meta.fetch("huggingface_url")],
      "keywords" => [
        "egocentric vision", "first-person video", "embodied AI", "robotics",
        "vision-language-action", "world models", "egocentric memory", "AR/VR",
        "hand-object interaction"
      ],
      "creator" => { "@type" => "Person", "name" => "He Chaoyue" },
      "isAccessibleForFree" => true,
      "distribution" => {
        "@type" => "DataDownload",
        "encodingFormat" => "text/csv",
        "contentUrl" => hf_csv
      },
      "dataset" => datasets.map do |entry|
        node = { "@type" => "Dataset", "name" => entry["name"], "url" => entry["url"] }
        node["description"] = entry["scale"].to_s[0, 240] if entry["scale"]
        node["keywords"] = Array(entry["tasks"]).join(", ") unless Array(entry["tasks"]).empty?
        node["license"] = entry["license_url"] if entry["license_url"]
        node
      end
    }

    meta_tags = [
      %(<meta name="description" content="#{html_escape(desc)}">),
      %(<link rel="canonical" href="#{url}">),
      %(<meta property="og:type" content="website">),
      %(<meta property="og:url" content="#{url}">),
      %(<meta property="og:title" content="#{html_escape(title)}">),
      %(<meta property="og:description" content="#{html_escape(desc)}">),
      %(<meta property="og:image" content="#{image}">),
      %(<meta name="twitter:card" content="summary_large_image">),
      %(<meta name="twitter:title" content="#{html_escape(title)}">),
      %(<meta name="twitter:description" content="#{html_escape(desc)}">),
      %(<meta name="twitter:image" content="#{image}">),
      %(<meta name="theme-color" content="#067882">),
      %(<script type="application/ld+json">),
      JSON.pretty_generate(jsonld),
      %(</script>)
    ]
    meta_tags.map { |line| "    #{line}" }.join("\n")
  end

  def resource_year(entry)
    year = entry["year"]
    return year if year.is_a?(Integer)

    released = entry["released"].to_s
    released[/\A\d{4}/].to_i if released.match?(/\A\d{4}/)
  end

  def era_for_year(year)
    return nil unless year
    return "<=2018" if year <= 2018
    return "2019-2021" if year <= 2021
    return "2022-2023" if year <= 2023
    return "2024-2025" if year <= 2025
    return "2026 (H1)" if year == 2026

    nil
  end

  def era_counts
    counts = {
      "<=2018" => 0,
      "2019-2021" => 0,
      "2022-2023" => 0,
      "2024-2025" => 0,
      "2026 (H1)" => 0
    }
    resources.reject { |entry| entry["scope"] == "adjacent" }.each do |entry|
      era = era_for_year(resource_year(entry))
      counts[era] += 1 if era
    end
    counts
  end

  def updated_timeline_svg(content = File.read(File.join(ROOT, "assets", "awesome-egocentric-timeline.svg"), encoding: "UTF-8"))
    counts = era_counts
    x_by_era = {
      "<=2018" => "190",
      "2019-2021" => "430",
      "2022-2023" => "670",
      "2024-2025" => "910",
      "2026 (H1)" => "1150"
    }
    text = content.dup
    x_by_era.each do |era, x|
      replace_once!(
        text,
        /(<text class="count" x="#{x}" y="[^"]+" text-anchor="middle">)\d+(<\/text>)/,
        "\\1#{counts.fetch(era)}\\2",
        "timeline #{era} count"
      )
    end
    text
  end

  def updated_access_funnel_svg(content = File.read(File.join(ROOT, "assets", "awesome-egocentric-access-funnel.svg"), encoding: "UTF-8"))
    summary_data = summary
    total = summary_data.fetch("egocentric_resources")
    statuses = summary_data.fetch("status_counts")
    text = content.dup
    replace_once!(text, /A funnel-style snapshot of the \d+ egocentric resources/, "A funnel-style snapshot of the #{total} egocentric resources", "access desc total")
    replace_once!(text, />\d+ egocentric resources by access state</, ">#{total} egocentric resources by access state<", "access title total")
    STATUS_ORDER.each do |status|
      replace_once!(
        text,
        /(>#{Regexp.escape(status)} &#183; )\d+(<\/text>)/,
        "\\1#{statuses.fetch(status, 0)}\\2",
        "access #{status} count"
      )
    end
    text
  end

  def updated_atlas_map_svg(content = File.read(File.join(ROOT, "assets", "awesome-egocentric-atlas-map.svg"), encoding: "UTF-8"))
    total = summary.fetch("egocentric_resources")
    replace_once!(content.dup, />\d+ resources</, ">#{total} resources<", "atlas map resources count")
  end

  def generated_files
    {
      SITE_DATA => site_json,
      CSV_OUTPUT => csv,
      README => updated_readme,
      File.join(ROOT, "index.html") => updated_index,
      File.join(ROOT, "assets", "awesome-egocentric-timeline.svg") => updated_timeline_svg,
      File.join(ROOT, "assets", "awesome-egocentric-access-funnel.svg") => updated_access_funnel_svg,
      File.join(ROOT, "assets", "awesome-egocentric-atlas-map.svg") => updated_atlas_map_svg
    }
  end

  def readme_aliases
    return {} unless File.file?(README_ALIASES)

    raw = YAML.load_file(README_ALIASES) || {}
    raw.fetch("aliases", {})
  end

  def readme_resource_labels(readme = File.read(README, encoding: "UTF-8"))
    labels = []
    lines = readme.lines
    README_RESOURCE_SECTIONS.each do |start_re, end_re|
      in_section = false
      lines.each do |line|
        in_section = true if line.match?(start_re)
        break if in_section && line.match?(end_re)
        next unless in_section && line.start_with?("|")
        next if line.include?("---")

        cells = line.strip.split("|").map(&:strip).reject(&:empty?)
        next if cells.empty? || %w[Resource Benchmark Tool].include?(cells[0])

        first = cells[0]
        labels << (first[/\[([^\]]+)\]/, 1] || first.gsub(/<[^>]*>/, "").strip)
      end
    end
    labels
  end

  def readme_resource_consistency
    aliases = readme_aliases
    inverse_aliases = {}
    aliases.each do |canonical, labels|
      Array(labels).each { |label| inverse_aliases[label] = canonical }
    end

    labels = readme_resource_labels
    canonical_from_readme = labels.map { |label| inverse_aliases[label] || label }.to_set
    yaml_names = resources.map { |entry| entry["name"] }.to_set

    {
      "readme_labels" => labels,
      "readme_missing_in_yaml" => labels.uniq.reject { |label| yaml_names.include?(inverse_aliases[label] || label) },
      "yaml_missing_in_readme" => yaml_names.to_a.reject do |name|
        canonical_from_readme.include?(name) || Array(aliases[name]).any? { |label| labels.include?(label) }
      end
    }
  end
end
