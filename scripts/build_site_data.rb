#!/usr/bin/env ruby
# frozen_string_literal: true

# Builds the compact JSON snapshot consumed by the GitHub Pages site.
#
# Usage:
#   ruby scripts/build_site_data.rb
#   ruby scripts/build_site_data.rb --check

require "json"
require "yaml"
require "csv"

ROOT = File.expand_path("..", __dir__)
CATALOG = File.join(ROOT, "data", "resources.yml")
TAXONOMY = File.join(ROOT, "data", "taxonomy.yml")
OUTPUT = File.join(ROOT, "site-data.json")
CSV_OUTPUT = File.join(ROOT, "awesome-egocentric-atlas.csv")

# Columns for the Hugging Face dataset viewer (one row per catalogued resource).
CSV_COLUMNS = %w[name kind released venue status scope year url paper code license scale tasks modalities].freeze

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

def tally(values)
  counts = Hash.new(0)
  values.each { |value| counts[value] += 1 if value }
  counts.sort.to_h
end

def task_family_lookup(taxonomy)
  families = taxonomy.fetch("task_families", {})
  lookup = {}
  families.each do |family, body|
    lookup[family] = family
    Array(body["aliases"]).each { |token| lookup[token] = family }
  end
  lookup
end

def normalize_resource(entry, task_lookup)
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
    "license" => entry["license"]
  }.delete_if { |_key, value| value.nil? || value == [] }
end

catalog = YAML.load_file(CATALOG)
taxonomy = YAML.load_file(TAXONOMY)
resources = catalog.fetch("resources")
task_lookup = task_family_lookup(taxonomy)
site_resources = resources.map { |entry| normalize_resource(entry, task_lookup) }
egocentric_resources = site_resources.select { |entry| entry["scope"] == "egocentric" }

lane_payload = LANES.map do |id, lane|
  families = lane.fetch("families")
  count = egocentric_resources.count do |entry|
    (Array(entry["task_families"]) & families).any?
  end

  {
    "id" => id,
    "label" => lane.fetch("label"),
    "description" => lane.fetch("description"),
    "families" => families,
    "count" => count
  }
end

payload = {
  "meta" => {
    "title" => catalog.fetch("meta").fetch("title"),
    "description" => catalog.fetch("meta").fetch("description"),
    "last_major_audit" => catalog.fetch("meta").fetch("last_major_audit"),
    "status_legend" => catalog.fetch("meta").fetch("status_legend"),
    "github_url" => "https://github.com/ChaoYue0307/awesome-egocentric-atlas",
    "pages_url" => "https://chaoyue0307.github.io/awesome-egocentric-atlas/",
    "huggingface_url" => "https://huggingface.co/datasets/cy0307/awesome-egocentric-atlas"
  },
  "summary" => {
    "total_resources" => site_resources.length,
    "egocentric_resources" => egocentric_resources.length,
    "adjacent_resources" => site_resources.length - egocentric_resources.length,
    "kind_counts" => tally(egocentric_resources.map { |entry| entry["kind"] }),
    "status_counts" => tally(egocentric_resources.map { |entry| entry["status"] })
  },
  "lanes" => lane_payload,
  "resources" => site_resources
}

json = JSON.pretty_generate(payload) + "\n"

csv = CSV.generate do |out|
  out << CSV_COLUMNS
  resources.each do |entry|
    out << CSV_COLUMNS.map do |column|
      value = entry[column]
      value.is_a?(Array) ? value.join("; ") : value
    end
  end
end

if ARGV.include?("--check")
  stale = []
  { OUTPUT => json, CSV_OUTPUT => csv }.each do |path, expected|
    unless File.file?(path)
      warn "Missing #{path}"
      exit 1
    end
    stale << File.basename(path) if File.read(path, encoding: "UTF-8") != expected
  end

  unless stale.empty?
    warn "#{stale.join(' and ')} out of date. Run: ruby scripts/build_site_data.rb"
    exit 1
  end

  puts "Site data OK: #{egocentric_resources.length} egocentric resources (#{resources.length} rows)"
else
  File.write(OUTPUT, json)
  File.write(CSV_OUTPUT, csv)
  puts "Wrote #{OUTPUT} and #{CSV_OUTPUT}"
end
