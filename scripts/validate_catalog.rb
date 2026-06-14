#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

ROOT = File.expand_path("..", __dir__)
CATALOG = File.join(ROOT, "data", "resources.yml")
README = File.join(ROOT, "README.md")
ALLOWED_STATUSES = %w[open request benchmark partial watch].freeze

def fail_with(message)
  warn "ERROR: #{message}"
  exit 1
end

data = YAML.load_file(CATALOG)
resources = data.fetch("resources")
fail_with("resources must be an array") unless resources.is_a?(Array)

names = resources.map { |entry| entry.fetch("name") }
counts = Hash.new(0)
names.each { |name| counts[name] += 1 }
duplicates = counts.select { |_name, count| count > 1 }.keys
fail_with("duplicate resource names: #{duplicates.join(', ')}") unless duplicates.empty?

resources.each do |entry|
  name = entry.fetch("name")
  fail_with("#{name}: missing kind") unless entry["kind"].is_a?(String)
  fail_with("#{name}: missing url") unless entry["url"].is_a?(String) && !entry["url"].empty?
  fail_with("#{name}: invalid status #{entry['status'].inspect}") unless ALLOWED_STATUSES.include?(entry["status"])
  fail_with("#{name}: tasks must be an array") unless entry["tasks"].is_a?(Array)
end

readme = File.read(README)
markdown_links = readme.scan(/\]\(([^)]+)\)/).flatten
html_links = readme.scan(/\b(?:href|src)="([^"]+)"/).flatten
local_links = (markdown_links + html_links).uniq.select do |link|
  !link.start_with?("http://", "https://", "mailto:", "#")
end

local_links.each do |link|
  path = link.split("#", 2).first
  next if path.empty?

  full_path = File.expand_path(path, ROOT)
  fail_with("README local link target is missing: #{link}") unless File.exist?(full_path)
end

required_assets = %w[
  assets/egoscape-atlas-cover.png
  assets/egoscape-atlas-map.svg
  assets/egoscape-task-matrix.svg
]

required_assets.each do |asset|
  full_path = File.join(ROOT, asset)
  fail_with("missing required asset: #{asset}") unless File.file?(full_path)
  fail_with("empty asset: #{asset}") if File.size(full_path).zero?
end

puts "Catalog OK: #{resources.length} resources, #{local_links.length} local README links"
