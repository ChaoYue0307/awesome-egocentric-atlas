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
  MILESTONES_SVG = File.join(ROOT, "assets", "awesome-egocentric-milestones.svg")

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

  # Field-defining works, flagged with `milestone: <year>` + `milestone_note`
  # in the catalog. Ordered chronologically by the milestone year.
  def milestones
    resources.select { |entry| entry["milestone"] }
      .sort_by { |entry| [entry["milestone"].to_s, entry["name"].to_s] }
      .map do |entry|
        milestone = {
          "name" => entry["name"],
          "kind" => entry["kind"],
          "url" => entry["url"],
          "date" => entry["milestone"].to_s,
          "note" => entry["milestone_note"]
        }
        milestone["image"] = entry["milestone_image"] if entry["milestone_image"]
        milestone
      end
  end

  def milestones_markdown(items = milestones)
    rows = items.map do |m|
      "| #{m['date']} | [#{m['name']}](#{m['url']}) | #{m['note']} |"
    end
    (["| Date | Milestone | Why it matters |", "| :---: | :--- | :--- |"] + rows).join("\n")
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
      "milestones" => milestones,
      "milestone_layout" => milestone_link_layout,
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
    replace_once!(
      text,
      /(<!-- MILESTONES:START[^>]*-->).*?(<!-- MILESTONES:END -->)/m,
      ->(m) { "#{m[1]}\n\n#{m[2]}" },
      "README milestones section"
    )
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
        license_label = entry["license"].to_s.downcase
        if entry["license_url"] && !%w[not\ specified unknown-public].include?(license_label)
          node["license"] = entry["license_url"]
        end
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

  def era_kind_counts
    counts = era_counts.transform_values { Hash.new(0) }
    resources.reject { |entry| entry["scope"] == "adjacent" }.each do |entry|
      era = era_for_year(resource_year(entry))
      next unless era

      counts[era][entry["kind"]] += 1
    end
    counts
  end

  def nice_timeline_axis_max(max_value)
    return 100 if max_value <= 100

    raw_step = max_value / 7.0
    magnitude = 10**Math.log10(raw_step).floor
    step = [1, 2, 2.5, 5, 10].map { |factor| factor * magnitude }.find { |candidate| candidate >= raw_step }
    axis_max = (((max_value.to_f / step).ceil) * step).to_i
    axis_max == max_value ? (axis_max + step).to_i : axis_max
  end

  def timeline_number(value)
    rounded = value.round(1)
    rounded == rounded.to_i ? rounded.to_i.to_s : rounded.to_s
  end

  def updated_timeline_svg(content = File.read(File.join(ROOT, "assets", "awesome-egocentric-timeline.svg"), encoding: "UTF-8"))
    counts = era_counts
    kind_counts = era_kind_counts
    eras = [
      ["<=2018", 190, "&#8804; 2018", "CMU-MMAC, GTEA"],
      ["2019-2021", 430, "2019&#8211;2021", "EPIC-100, Ego4D"],
      ["2022-2023", 670, "2022&#8211;2023", "Ego-Exo4D, HOI4D"],
      ["2024-2025", 910, "2024&#8211;2025", "EgoVideo, EgoDex"],
      ["2026 (H1)", 1150, "2026 (H1)", "first half only &#183; DreamDojo, EgoScale"]
    ]
    kind_order = %w[dataset benchmark model toolkit collection]
    colors = {
      "dataset" => "#0b8f98",
      "benchmark" => "#5b6b73",
      "model" => "#ef9f24",
      "toolkit" => "#7a6ff0",
      "collection" => "#b8c2c9"
    }
    plot_top = 200.0
    plot_bottom = 480.0
    plot_height = plot_bottom - plot_top
    axis_max = nice_timeline_axis_max(counts.values.max || 0)
    raw_step = axis_max / 7.0
    magnitude = 10**Math.log10(raw_step).floor
    tick_step = [1, 2, 2.5, 5, 10].map { |factor| factor * magnitude }.find { |candidate| candidate >= raw_step }.to_i
    scale = plot_height / axis_max
    y_for = ->(value) { plot_bottom - (value * scale) }
    fmt = method(:timeline_number)

    clip_paths = eras.each_with_index.map do |(era, x, _label, _anchor), idx|
      total = counts.fetch(era)
      height = total * scale
      y = plot_bottom - height
      %(<clipPath id="c#{idx + 1}"><rect x="#{x - 48}" y="#{fmt.call(y)}" width="96" height="#{fmt.call(height)}" rx="8"/></clipPath>)
    end

    ticks = (0..axis_max).step(tick_step).to_a
    grid = ticks.reject(&:zero?).map do |tick|
      y = y_for.call(tick)
      [
        %(<line class="grid" x1="110" y1="#{fmt.call(y)}" x2="1210" y2="#{fmt.call(y)}"/>),
        %(<text class="gridlabel" x="100" y="#{fmt.call(y + 4)}" text-anchor="end">#{tick}</text>)
      ].join("\n  ")
    end.join("\n  ")

    bars = eras.each_with_index.map do |(era, x, _label, _anchor), idx|
      cumulative = 0.0
      segments = kind_order.map do |kind|
        value = kind_counts.fetch(era).fetch(kind, 0)
        next nil if value.zero?

        height = value * scale
        y = plot_bottom - cumulative - height
        cumulative += height
        %(<rect class="seg" x="#{x - 48}" y="#{fmt.call(y)}" width="96" height="#{fmt.call(height)}" fill="#{colors.fetch(kind)}"/>)
      end.compact.join("\n    ")
      %(  <g clip-path="url(#c#{idx + 1})" filter="url(#shadow)">\n    #{segments}\n  </g>)
    end.join("\n")

    points = eras.map { |(era, x, _label, _anchor)| [x, y_for.call(counts.fetch(era))] }
    trend_points = points.map { |x, y| "#{x},#{fmt.call(y)}" }.join(" ")
    last_x, last_y = points.last
    projection = %(M#{last_x} #{fmt.call(last_y)} L1230 #{fmt.call(last_y - 17)})
    note_y = [135, last_y - 38].max

    circles = points.each_with_index.map do |(x, y), idx|
      fill = idx == points.length - 1 ? "#ef9f24" : "#ffffff"
      stroke = idx == points.length - 1 ? "#ffffff" : "#0f3b45"
      radius = idx == points.length - 1 ? 6 : 5.5
      %(<circle cx="#{x}" cy="#{fmt.call(y)}" r="#{radius}" fill="#{fill}" stroke="#{stroke}" stroke-width="2.4"/>)
    end.join("\n    ")

    count_labels = eras.map do |era, x, _label, _anchor|
      y = y_for.call(counts.fetch(era)) - 12
      %(<text class="count" x="#{x}" y="#{fmt.call(y)}" text-anchor="middle">#{counts.fetch(era)}</text>)
    end.join("\n  ")

    era_labels = eras.map do |_era, x, label, anchor|
      [
        %(<text class="era" x="#{x}" y="510" text-anchor="middle">#{label}</text>),
        %(<text class="anchor" x="#{x}" y="531" text-anchor="middle">#{anchor}</text>)
      ].join("\n  ")
    end.join("\n  ")

    <<~SVG
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1280 560" role="img" aria-labelledby="title desc">
        <title id="title">Egocentric resources by era and type</title>
        <desc id="desc">A stacked bar chart of catalogued egocentric AI resources grouped into five eras and split by resource type (dataset, benchmark, model, toolkit, collection). The y-axis is generated from the latest catalog counts so bar tops, totals, and trend line stay aligned after every scan.</desc>
        <defs>
          <linearGradient id="bg" x1="0" x2="1" y1="0" y2="1">
            <stop offset="0" stop-color="#fbfdff"/>
            <stop offset="0.6" stop-color="#f4faf9"/>
            <stop offset="1" stop-color="#eef7f6"/>
          </linearGradient>
          <pattern id="dots" width="28" height="28" patternUnits="userSpaceOnUse">
            <circle cx="2" cy="2" r="1.4" fill="#cfe0e4" opacity="0.4"/>
          </pattern>
          <filter id="shadow" x="-14%" y="-14%" width="128%" height="140%">
            <feDropShadow dx="0" dy="6" stdDeviation="7" flood-color="#0f2a33" flood-opacity="0.12"/>
          </filter>
          <marker id="up" viewBox="0 0 10 10" refX="6.5" refY="5" markerWidth="7.5" markerHeight="7.5" orient="auto-start-reverse">
            <path d="M0 0 L10 5 L0 10 z" fill="#ef9f24"/>
          </marker>
          #{clip_paths.join("\n    ")}
          <style>
            .ink { fill: #14212b; }
            .kicker { font: 700 14px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #0b8f98; letter-spacing: .16em; }
            .title { font: 700 34px system-ui, -apple-system, "Segoe UI", sans-serif; }
            .subtitle { font: 500 16px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #53606b; }
            .count { font: 800 21px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #0f3b45; }
            .era { font: 700 15px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #2b3a44; }
            .anchor { font: 500 13px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #6a7882; }
            .grid { stroke: #e2ecef; stroke-width: 1.2; }
            .gridlabel { font: 600 12px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #9aa7af; }
            .axis { stroke: #c2d2d8; stroke-width: 2; }
            .trend { stroke: #0f3b45; stroke-width: 2.6; fill: none; stroke-linejoin: round; stroke-linecap: round; }
            .proj { stroke: #ef9f24; stroke-width: 3; fill: none; stroke-dasharray: 3 7; stroke-linecap: round; }
            .note { font: 700 12.5px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #c4801a; }
            .seg { stroke: #ffffff; stroke-width: 1.4; }
            .lg { font: 600 14px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #46525f; }
          </style>
        </defs>

        <rect width="1280" height="560" fill="url(#bg)"/>
        <rect width="1280" height="560" fill="url(#dots)"/>

        <text class="kicker" x="90" y="50">GROWTH BY TYPE</text>
        <text class="title ink" x="90" y="92">Egocentric resources by era</text>
        <text class="subtitle" x="90" y="120">Each era's bar is split by type. 2026 (first half only) already exceeds the 2024&#8211;2025 peak.</text>

        <g>
          <rect x="90" y="145" width="14" height="14" rx="3" fill="#0b8f98"/><text class="lg" x="111" y="157">datasets</text>
          <rect x="193" y="145" width="14" height="14" rx="3" fill="#5b6b73"/><text class="lg" x="214" y="157">benchmarks</text>
          <rect x="316" y="145" width="14" height="14" rx="3" fill="#ef9f24"/><text class="lg" x="337" y="157">models</text>
          <rect x="407" y="145" width="14" height="14" rx="3" fill="#7a6ff0"/><text class="lg" x="428" y="157">toolkits</text>
          <rect x="502" y="145" width="14" height="14" rx="3" fill="#b8c2c9"/><text class="lg" x="523" y="157">collection</text>
        </g>

        <!-- gridlines generated from live catalog max=#{counts.values.max}, axis_max=#{axis_max}, tick_step=#{tick_step} -->
        #{grid}
        <text class="gridlabel" x="100" y="484" text-anchor="end">0</text>
        <line class="axis" x1="110" y1="480" x2="1210" y2="480"/>

        <!-- stacked bars generated from live era/kind counts -->
      #{bars}

        <polyline class="trend" points="#{trend_points}"/>
        <path class="proj" d="#{projection}" marker-end="url(#up)"/>
        <text class="note" x="1210" y="#{fmt.call(note_y)}" text-anchor="middle">H1 only</text>
        <g>
          #{circles}
        </g>

        #{count_labels}

        #{era_labels}
      </svg>
    SVG
  end

  def updated_access_funnel_svg(_content = nil)
    summary_data = summary
    total = summary_data.fetch("egocentric_resources")
    statuses = summary_data.fetch("status_counts")
    max_count = STATUS_ORDER.map { |status| statuses.fetch(status, 0) }.max.to_f
    max_count = 1.0 if max_count.zero?
    rail_x = 300
    rail_width = 560.0
    row_y = 186
    row_gap = 64
    row_height = 40
    colors = {
      "open" => "#00a6b2",
      "watch" => "#9aa7af",
      "partial" => "#ef9f24",
      "benchmark" => "#5b6b73",
      "request" => "#d98f1f"
    }
    gloss = {
      "open" => "usable today",
      "watch" => "verify before use",
      "partial" => "subset / annotations only",
      "benchmark" => "eval over existing video",
      "request" => "license / approval needed"
    }

    rows = STATUS_ORDER.each_with_index.map do |status, index|
      count = statuses.fetch(status, 0)
      percent = total.positive? ? ((count * 100.0) / total) : 0.0
      fill_width = count.zero? ? 0.0 : [(count / max_count) * rail_width, 8.0].max
      y = row_y + (index * row_gap)
      label = "#{status} · #{count}"
      pct_label = format("%.1f%%", percent)
      <<~ROW
        <g>
          <text class="rowlabel" x="70" y="#{y + 27}">#{html_escape(label)}</text>
          <rect class="rail" x="#{rail_x}" y="#{y}" width="#{timeline_number(rail_width)}" height="#{row_height}" rx="12"/>
          <rect class="fill" x="#{rail_x}" y="#{y}" width="#{timeline_number(fill_width)}" height="#{row_height}" rx="12" fill="#{colors.fetch(status)}"/>
          <text class="value" x="#{rail_x + rail_width + 28}" y="#{y + 27}">#{pct_label}</text>
          <text class="gloss" x="#{rail_x + rail_width + 126}" y="#{y + 27}">#{html_escape(gloss.fetch(status))}</text>
        </g>
      ROW
    end.join("\n")

    <<~SVG
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1280 520" role="img" aria-labelledby="title desc">
        <title id="title">Egocentric resources by access state</title>
        <desc id="desc">A proportional bar snapshot of the #{total} egocentric resources by public-access state: open, watch, partial, benchmark, and request. Bar lengths are generated from the latest catalog counts.</desc>
        <defs>
          <linearGradient id="bg" x1="0" x2="1" y1="0" y2="1">
            <stop offset="0" stop-color="#fbfdff"/>
            <stop offset="1" stop-color="#eef7f6"/>
          </linearGradient>
          <pattern id="dots" width="32" height="32" patternUnits="userSpaceOnUse">
            <circle cx="2" cy="2" r="1.6" fill="#cfe0e4" opacity="0.4"/>
          </pattern>
          <filter id="shadow" x="-6%" y="-18%" width="112%" height="145%">
            <feDropShadow dx="0" dy="5" stdDeviation="6" flood-color="#0f2a33" flood-opacity="0.10"/>
          </filter>
          <style>
            .ink { fill: #14212b; }
            .kicker { font: 700 15px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #0b8f98; letter-spacing: .16em; }
            .title { font: 700 37px system-ui, -apple-system, "Segoe UI", sans-serif; }
            .subtitle { font: 500 17px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #53606b; }
            .rowlabel { font: 760 18px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #24323c; }
            .value { font: 760 18px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #24323c; }
            .gloss { font: 520 16px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #6a7882; }
            .rail { fill: #e8f1f3; stroke: #c9dde2; stroke-width: 1.1; }
            .fill { filter: url(#shadow); }
            .scale { font: 620 12px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #85939c; }
            .tick { stroke: #c9dde2; stroke-width: 1; }
          </style>
        </defs>

        <rect width="1280" height="520" fill="url(#bg)"/>
        <rect width="1280" height="520" fill="url(#dots)"/>

        <text class="kicker" x="70" y="58">ACCESS REALITY</text>
        <text class="title ink" x="70" y="102">#{total} egocentric resources by access state</text>
        <text class="subtitle" x="70" y="134">Bar lengths are proportional to live status counts. Labels stay outside the bars so small categories remain readable.</text>

        <line class="tick" x1="#{rail_x}" y1="162" x2="#{rail_x}" y2="174"/>
        <line class="tick" x1="#{rail_x + rail_width}" y1="162" x2="#{rail_x + rail_width}" y2="174"/>
        <text class="scale" x="#{rail_x}" y="156" text-anchor="middle">0</text>
        <text class="scale" x="#{rail_x + rail_width}" y="156" text-anchor="middle">max #{max_count.to_i}</text>

        #{rows}
      </svg>
    SVG
  end

  def updated_atlas_map_svg(content = File.read(File.join(ROOT, "assets", "awesome-egocentric-atlas-map.svg"), encoding: "UTF-8"))
    total = summary.fetch("egocentric_resources")
    replace_once!(content.dup, />\d+ resources</, ">#{total} resources<", "atlas map resources count")
  end

  def truncate_text(text, max_chars)
    return text if text.length <= max_chars

    suffix = "..."
    "#{text[0, [max_chars - suffix.length, 1].max].rstrip}#{suffix}"
  end

  def ellipsize_text(text, max_chars)
    suffix = "..."
    value = text.to_s.rstrip
    return "#{value}#{suffix}" if value.length <= max_chars - suffix.length

    truncate_text(value, max_chars)
  end

  def wrap_text(text, max_chars:, max_lines:)
    words = text.to_s.gsub(/\s+/, " ").strip.split(" ")
    return [] if words.empty?

    lines = []
    current = ""
    truncated = false

    words.each_with_index do |word, index|
      candidate = current.empty? ? word : "#{current} #{word}"
      if candidate.length <= max_chars
        current = candidate
        next
      end

      if current.empty?
        lines << truncate_text(word, max_chars)
      else
        lines << current
        current = word
      end

      next unless lines.length >= max_lines

      truncated = index < words.length - 1 || !current.empty?
      current = ""
      break
    end

    unless current.empty?
      if lines.length < max_lines
        lines << truncate_text(current, max_chars)
      else
        truncated = true
      end
    end

    lines[-1] = ellipsize_text(lines[-1], max_chars) if truncated && lines.any?
    lines
  end

  def svg_text_block(lines, x:, y:, class_name:, line_height:, anchor: "start")
    lines.each_with_index.map do |line, index|
      %(<text class="#{class_name}" x="#{x}" y="#{y + (index * line_height)}" text-anchor="#{anchor}">#{html_escape(line)}</text>)
    end.join("\n")
  end

  def milestone_poster_layout(items = milestones)
    years = items.map { |item| item.fetch("date").to_s[/\d{4}/].to_i }.reject(&:zero?)
    year_span = years.empty? ? "field milestones" : "#{years.min}-#{years.max}"
    year_for = ->(item) { item.fetch("date").to_s[/\d{4}/].to_i }
    era_specs = [
      {
        label: "Origins",
        range: "2009-2015",
        theme: "Egocentric activity, gaze, hands, and daily life become measurable.",
        color: "#0b8f98",
        accent: "#ef9f24",
        items: items.select { |item| year_for.call(item) <= 2018 }
      },
      {
        label: "Modern Scale",
        range: "2020-2022",
        theme: "Large benchmarks, smart-glasses sensing, geometry, and video-language pretraining.",
        color: "#0f5d68",
        accent: "#7a6ff0",
        items: items.select { |item| (2019..2022).cover?(year_for.call(item)) }
      },
      {
        label: "Reasoning & Robotics",
        range: "2023-2024",
        theme: "Long-form reasoning, ego-exo capture, AR hand-object tracking, and robot interfaces.",
        color: "#34424d",
        accent: "#0b8f98",
        items: items.select { |item| (2023..2024).cover?(year_for.call(item)) }
      },
      {
        label: "Daily Life to VLA",
        range: "2025",
        theme: "Personal memory and egocentric demonstrations begin feeding robot policies.",
        color: "#98620b",
        accent: "#0b8f98",
        items: items.select { |item| year_for.call(item) == 2025 }
      },
      {
        label: "World-Model Frontier",
        range: "2026",
        theme: "Egocentric corpora, world models, and data-scaling laws push embodied AI outward.",
        color: "#5d52cf",
        accent: "#ef9f24",
        items: items.select { |item| year_for.call(item) >= 2026 }
      }
    ].reject { |group| group.fetch(:items).empty? }

    canvas_width = 1600
    margin_x = 52
    row_gap = 26
    header_height = 188
    row_width = canvas_width - (margin_x * 2)
    card_area_x = 330
    card_area_width = canvas_width - card_area_x - margin_x
    card_gap = 18
    card_row_gap = 20
    era_dot_x = card_area_x - margin_x - 18

    row_layouts = era_specs.map do |group|
      count = group.fetch(:items).length
      columns = count >= 5 ? 3 : [count, 4].min
      card_width = [
        [
          ((card_area_width - (card_gap * [columns - 1, 0].max)) / columns.to_f).floor,
          252
        ].max,
        300
      ].min
      image_height = [
        [
          (card_width * 0.60).round,
          156
        ].max,
        180
      ].min
      card_height = image_height + 156
      card_rows = (count.to_f / columns).ceil
      card_stack_height = (card_rows * card_height) + (card_row_gap * [card_rows - 1, 0].max)
      row_height = card_stack_height + 124
      group.merge(
        columns: columns,
        card_width: card_width,
        image_height: image_height,
        card_height: card_height,
        row_height: row_height
      )
    end

    height = header_height + row_layouts.sum { |group| group.fetch(:row_height) } + (row_gap * [row_layouts.length - 1, 0].max) + 31

    current_y = header_height
    era_nodes = []
    rows = row_layouts.each_with_index.map do |group, group_index|
      y = current_y
      current_y += group.fetch(:row_height) + row_gap
      era_nodes << [margin_x + era_dot_x, y + 54]
      card_y = y + 78

      cells = group.fetch(:items).each_with_index.map do |item, index|
        card_width = group.fetch(:card_width)
        image_height = group.fetch(:image_height)
        card_height = group.fetch(:card_height)
        columns = group.fetch(:columns)
        row_index = index / columns
        column_index = index % columns
        items_in_row = [group.fetch(:items).length - (row_index * columns), columns].min
        cards_width = (items_in_row * card_width) + (card_gap * [items_in_row - 1, 0].max)
        start_x = card_area_x + ((card_area_width - cards_width) / 2.0)
        x = start_x + (column_index * (card_width + card_gap))
        {
          item: item,
          x: x,
          y: card_y + (row_index * (card_height + card_row_gap)),
          width: card_width,
          height: card_height,
          image_height: image_height
        }
      end

      group.merge(index: group_index, y: y, cells: cells)
    end

    {
      items: items,
      year_span: year_span,
      width: canvas_width,
      height: height,
      margin_x: margin_x,
      row_width: row_width,
      card_area_x: card_area_x,
      era_dot_x: era_dot_x,
      era_nodes: era_nodes,
      rows: rows
    }
  end

  def milestone_link_layout
    layout = milestone_poster_layout
    {
      "width" => layout.fetch(:width),
      "height" => layout.fetch(:height),
      "cells" => layout.fetch(:rows).flat_map do |group|
        group.fetch(:cells).map do |cell|
          item = cell.fetch(:item)
          {
            "name" => item.fetch("name"),
            "date" => item.fetch("date"),
            "kind" => item.fetch("kind"),
            "url" => item.fetch("url"),
            "x" => cell.fetch(:x).round(2),
            "y" => cell.fetch(:y).round(2),
            "width" => cell.fetch(:width),
            "height" => cell.fetch(:height)
          }
        end
      end
    }
  end

  def updated_milestones_svg(_content = nil)
    layout = milestone_poster_layout
    items = layout.fetch(:items)
    year_span = layout.fetch(:year_span)
    width = layout.fetch(:width)
    height = layout.fetch(:height)
    margin_x = layout.fetch(:margin_x)
    row_width = layout.fetch(:row_width)
    card_area_x = layout.fetch(:card_area_x)
    era_dot_x = layout.fetch(:era_dot_x)
    era_nodes = layout.fetch(:era_nodes)

    kind_colors = {
      "dataset" => "#0b8f98",
      "benchmark" => "#5b6b73",
      "model" => "#ef9f24",
      "toolkit" => "#7a6ff0",
      "collection" => "#b8c2c9"
    }

    bands = layout.fetch(:rows).map do |group|
      y = group.fetch(:y)
      cards = group.fetch(:cells).map do |cell|
        item = cell.fetch(:item)
        card_width = cell.fetch(:width)
        image_height = cell.fetch(:image_height)
        card_height = cell.fetch(:height)
        x = cell.fetch(:x)
        card_y = cell.fetch(:y)
        image = item["image"].to_s.sub(%r{\Aassets/}, "")
        date = item.fetch("date")
        kind = item.fetch("kind")
        kind_color = kind_colors.fetch(kind, group.fetch(:accent))
        date_width = [date.length * 7.3 + 22, 66].max.round
        kind_width = [[kind.length * 6.9 + 24, 58].max.round, card_width - date_width - 25].min
        max_name_chars = [[(card_width / 8.6).floor, 18].max, 32].min
        name_lines = wrap_text(item.fetch("name"), max_chars: max_name_chars, max_lines: 2)

        <<~CARD
          <a href="#{html_escape(item.fetch("url"))}" target="_blank">
            <g class="milestone-card" transform="translate(#{format('%.1f', x)} #{card_y})">
              <rect class="card-bg" width="#{card_width}" height="#{card_height}" rx="14"/>
              <rect class="image-frame" x="12" y="12" width="#{card_width - 24}" height="#{image_height}" rx="10"/>
              <image href="#{html_escape(image)}" x="12" y="12" width="#{card_width - 24}" height="#{image_height}" preserveAspectRatio="xMidYMid meet"/>
              <rect class="date-pill" x="12" y="#{image_height + 32}" width="#{date_width}" height="27" rx="13.5"/>
              <text class="pill-text" x="#{12 + (date_width / 2.0)}" y="#{image_height + 50}" text-anchor="middle">#{html_escape(date)}</text>
              <rect class="kind-pill" x="#{21 + date_width}" y="#{image_height + 32}" width="#{kind_width}" height="27" rx="13.5" fill="#{kind_color}"/>
              <text class="pill-text" x="#{21 + date_width + (kind_width / 2.0)}" y="#{image_height + 50}" text-anchor="middle">#{html_escape(kind)}</text>
              #{svg_text_block(name_lines, x: 12, y: image_height + 88, class_name: "card-title", line_height: 23)}
            </g>
          </a>
        CARD
      end.join("\n")

      label_lines = wrap_text(group.fetch(:theme), max_chars: 30, max_lines: 3)
      <<~BAND
        <g class="era-band" transform="translate(#{margin_x} #{y})">
          <rect class="era-bg" width="#{row_width}" height="#{group.fetch(:row_height)}" rx="22"/>
          <circle class="era-dot" cx="#{era_dot_x}" cy="54" r="14" fill="#{group.fetch(:color)}"/>
          <path class="era-rail" d="M #{card_area_x - margin_x} 54 H #{row_width - 34}"/>
          <text class="era-kicker" x="30" y="36">ERA #{group.fetch(:index) + 1}</text>
          <text class="era-range" x="30" y="76">#{html_escape(group.fetch(:range))}</text>
          <text class="era-label" x="30" y="111">#{html_escape(group.fetch(:label))}</text>
          #{svg_text_block(label_lines, x: 30, y: 142, class_name: "era-copy", line_height: 17)}
        </g>
        #{cards}
      BAND
    end.join("\n")

    spine_path = if era_nodes.length > 1
      coords = era_nodes.map.with_index do |(x, y), index|
        "#{index.zero? ? 'M' : 'L'} #{x} #{y}"
      end.join(" ")
      %(<path class="spine" d="#{coords}"/>)
    else
      ""
    end

    <<~SVG
      <svg xmlns="http://www.w3.org/2000/svg" width="#{width}" height="#{height}" viewBox="0 0 #{width} #{height}" role="img" aria-labelledby="title desc">
        <title id="title">Representative egocentric AI milestones</title>
        <desc id="desc">A generated milestone poster for Awesome Egocentric Atlas, showing #{items.length} representative field-defining works from #{year_span}, grouped into era bands with uncropped visual panels.</desc>
        <defs>
          <linearGradient id="bg" x1="0" y1="0" x2="1" y2="1">
            <stop offset="0" stop-color="#fbfdff"/>
            <stop offset="0.56" stop-color="#f4faf9"/>
            <stop offset="1" stop-color="#eaf6f5"/>
          </linearGradient>
          <linearGradient id="heroGlow" x1="0" y1="0" x2="1" y2="0">
            <stop offset="0" stop-color="#0b8f98" stop-opacity=".20"/>
            <stop offset=".48" stop-color="#ef9f24" stop-opacity=".16"/>
            <stop offset="1" stop-color="#7a6ff0" stop-opacity=".16"/>
          </linearGradient>
          <pattern id="dots" width="28" height="28" patternUnits="userSpaceOnUse">
            <circle cx="2" cy="2" r="1.35" fill="#cfe0e4" opacity="0.38"/>
          </pattern>
          <filter id="softShadow" x="-12%" y="-12%" width="124%" height="132%">
            <feDropShadow dx="0" dy="10" stdDeviation="12" flood-color="#0f2a33" flood-opacity="0.12"/>
          </filter>
          <style>
            .kicker { font: 800 15px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #0b8f98; letter-spacing: .18em; }
            .title { font: 850 52px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #14212b; letter-spacing: 0; }
            .subtitle { font: 500 18px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #53606b; letter-spacing: 0; }
            .stat-num { font: 900 43px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #0f3b45; letter-spacing: 0; }
            .stat-range { font: 900 34px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #0f3b45; letter-spacing: 0; }
            .stat-label { font: 700 14px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #61717b; letter-spacing: .08em; }
            .hero-card { fill: #ffffff; fill-opacity: .70; stroke: #c9dde2; stroke-width: 1.2; }
            .era-bg { fill: #ffffff; fill-opacity: .92; stroke: #c9dde2; stroke-width: 1.25; filter: url(#softShadow); }
            .era-rail { stroke: #c8dde2; stroke-width: 1.35; stroke-dasharray: 6 8; }
            .era-dot { stroke: #ffffff; stroke-width: 4; filter: url(#softShadow); }
            .era-kicker { font: 850 12px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #0b8f98; letter-spacing: .16em; }
            .era-range { font: 900 27px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #122733; letter-spacing: 0; }
            .era-label { font: 850 18px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #263642; letter-spacing: 0; }
            .era-copy { font: 560 12.2px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #62727c; letter-spacing: 0; }
            .spine { fill: none; stroke: #0b8f98; stroke-width: 4; stroke-linecap: round; stroke-linejoin: round; opacity: .34; }
            .card-bg { fill: #ffffff; fill-opacity: .97; stroke: #cfe0e4; stroke-width: 1.1; }
            .milestone-card:hover .card-bg { stroke: #0b8f98; }
            .image-frame { fill: #eef6f5; stroke: #d7e5e8; stroke-width: 1; }
            .date-pill { fill: #0b8f98; }
            .kind-pill { fill: #ef9f24; }
            .pill-text { font: 800 10.8px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #ffffff; letter-spacing: 0; }
            .card-title { font: 840 18px system-ui, -apple-system, "Segoe UI", sans-serif; fill: #182733; letter-spacing: 0; }
            .rule { stroke: #c8dde2; stroke-width: 1.4; }
          </style>
        </defs>

        <rect width="#{width}" height="#{height}" fill="url(#bg)"/>
        <rect width="#{width}" height="#{height}" fill="url(#dots)"/>
        <rect class="hero-card" x="#{margin_x}" y="24" width="#{row_width}" height="138" rx="24"/>
        <rect x="#{margin_x}" y="24" width="#{row_width}" height="138" rx="24" fill="url(#heroGlow)"/>
        <line class="rule" x1="#{margin_x}" y1="150" x2="#{margin_x + row_width}" y2="150"/>

        <text class="kicker" x="#{margin_x}" y="48">CURATED FIELD MILESTONES</text>
        <text class="title" x="#{margin_x}" y="104">Egocentric AI timeline</text>
        <text class="subtitle" x="#{margin_x}" y="138">Representative works grouped by the shifts they created: egocentric data, scale, reasoning, robotics, and world models.</text>

        <text class="stat-range" x="#{width - 300}" y="82" text-anchor="middle">#{year_span}</text>
        <text class="stat-label" x="#{width - 300}" y="106" text-anchor="middle">SPAN</text>
        <text class="stat-num" x="#{width - 104}" y="82" text-anchor="middle">#{items.length}</text>
        <text class="stat-label" x="#{width - 104}" y="106" text-anchor="middle">WORKS</text>

        #{spine_path}
      #{bands}
      </svg>
    SVG
  end

  def generated_files
    {
      SITE_DATA => site_json,
      CSV_OUTPUT => csv,
      README => updated_readme,
      File.join(ROOT, "index.html") => updated_index,
      File.join(ROOT, "assets", "awesome-egocentric-timeline.svg") => updated_timeline_svg,
      File.join(ROOT, "assets", "awesome-egocentric-access-funnel.svg") => updated_access_funnel_svg,
      File.join(ROOT, "assets", "awesome-egocentric-atlas-map.svg") => updated_atlas_map_svg,
      MILESTONES_SVG => updated_milestones_svg
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
