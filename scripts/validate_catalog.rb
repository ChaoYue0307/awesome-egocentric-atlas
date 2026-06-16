#!/usr/bin/env ruby
# frozen_string_literal: true

# Validates the resource catalog and checks README/catalog consistency.
#
# Checks performed:
#   * data/resources.yml parses and has the expected meta + resources shape.
#   * Every resource has a unique name, a known kind, a known status, a URL, and a tasks array.
#   * Years, when present, are plausible integers.
#   * The status legend in the catalog matches the allowed statuses.
#   * Every local link/asset referenced in README.md exists on disk.
#   * The README "Updated" date and the resources badge stay in sync with the catalog.
#   * README resource table names resolve to data/resources.yml names, with aliases documented.
#   * Catalog hygiene warnings surface stale verification and incomplete access metadata.
#
# Usage: ruby scripts/validate_catalog.rb

require "date"
require "yaml"
require_relative "lib/catalog_artifacts"

ROOT = File.expand_path("..", __dir__)
CATALOG = File.join(ROOT, "data", "resources.yml")
README = File.join(ROOT, "README.md")

ALLOWED_STATUSES = %w[open request benchmark partial watch].freeze
ALLOWED_KINDS = %w[dataset benchmark model toolkit survey challenge collection].freeze
ALLOWED_SCOPES = %w[egocentric adjacent].freeze
REQUIRED_META_KEYS = %w[title description last_major_audit scope status_legend].freeze
MIN_YEAR = 2000
MAX_YEAR = Time.now.year + 1

# Optional fields that, when present, must be http(s) URLs.
URL_FIELDS = %w[paper project code data benchmark leaderboard mirror access_url license_url].freeze
# Optional fields that, when present, must be YYYY-MM-DD dates.
DATE_FIELDS = %w[verified_at].freeze
DATE_RE = /\A\d{4}-\d{2}-\d{2}\z/.freeze
TAXONOMY = File.join(ROOT, "data", "taxonomy.yml")

REQUIRED_ASSETS = %w[
  assets/awesome-egocentric-atlas-cover.png
  assets/awesome-egocentric-atlas-map.png
  assets/awesome-egocentric-reader-route.png
  assets/awesome-egocentric-timeline.png
  assets/awesome-egocentric-task-matrix.png
  assets/awesome-egocentric-access-funnel.png
  assets/awesome-egocentric-atlas-map.svg
  assets/awesome-egocentric-reader-route.svg
  assets/awesome-egocentric-timeline.svg
  assets/awesome-egocentric-task-matrix.svg
  assets/awesome-egocentric-access-funnel.svg
].freeze

errors = []
warnings = []

def add(errors, message)
  errors << message
end

def sample_names(entries, limit = 8)
  entries.map { |entry| entry["name"] }.compact.first(limit).join(", ")
end

def add_warning(warnings, entries, message)
  return if entries.empty?

  suffix = entries.length > 8 ? ", ..." : ""
  warnings << "#{entries.length} #{message} (e.g., #{sample_names(entries)}#{suffix})"
end

data = YAML.load_file(CATALOG)
unless data.is_a?(Hash)
  warn "ERROR: catalog root must be a mapping"
  exit 1
end

# --- meta block -------------------------------------------------------------
meta = data["meta"]
if meta.is_a?(Hash)
  REQUIRED_META_KEYS.each do |key|
    add(errors, "meta is missing #{key}") unless meta.key?(key)
  end

  legend = meta["status_legend"]
  if legend.is_a?(Hash)
    legend_keys = legend.keys.sort
    unless legend_keys == ALLOWED_STATUSES.sort
      add(errors, "meta.status_legend keys #{legend_keys.inspect} must match statuses #{ALLOWED_STATUSES.sort.inspect}")
    end
  else
    add(errors, "meta.status_legend must be a mapping")
  end
else
  add(errors, "catalog must define a meta mapping")
end

# --- resources --------------------------------------------------------------
resources = data["resources"]
unless resources.is_a?(Array) && !resources.empty?
  warn "ERROR: resources must be a non-empty array"
  exit 1
end

names = resources.map { |entry| entry["name"] }
counts = Hash.new(0)
names.each { |name| counts[name] += 1 }
duplicates = counts.select { |_name, count| count > 1 }.keys
add(errors, "duplicate resource names: #{duplicates.join(', ')}") unless duplicates.empty?

resources.each do |entry|
  name = entry["name"]
  if name.nil? || name.to_s.empty?
    add(errors, "a resource is missing its name")
    next
  end

  unless ALLOWED_KINDS.include?(entry["kind"])
    add(errors, "#{name}: invalid kind #{entry['kind'].inspect} (allowed: #{ALLOWED_KINDS.join(', ')})")
  end

  unless ALLOWED_STATUSES.include?(entry["status"])
    add(errors, "#{name}: invalid status #{entry['status'].inspect} (allowed: #{ALLOWED_STATUSES.join(', ')})")
  end

  url = entry["url"]
  unless url.is_a?(String) && url.start_with?("http://", "https://")
    add(errors, "#{name}: url must be an http(s) link, got #{url.inspect}")
  end

  add(errors, "#{name}: tasks must be a non-empty array") unless entry["tasks"].is_a?(Array) && !entry["tasks"].empty?

  if entry.key?("year")
    year = entry["year"]
    unless year.is_a?(Integer) && year.between?(MIN_YEAR, MAX_YEAR)
      add(errors, "#{name}: year must be an integer in #{MIN_YEAR}..#{MAX_YEAR}, got #{year.inspect}")
    end
  end

  if entry.key?("scope") && !ALLOWED_SCOPES.include?(entry["scope"])
    add(errors, "#{name}: invalid scope #{entry['scope'].inspect} (allowed: #{ALLOWED_SCOPES.join(', ')})")
  end

  if entry.key?("released") && entry["released"].to_s !~ /\A\d{4}(-(0[1-9]|1[0-2]))?\z/
    add(errors, "#{name}: released must be YYYY or YYYY-MM, got #{entry['released'].inspect}")
  end

  # Optional link fields, when present, must be http(s) URLs.
  URL_FIELDS.each do |field|
    next unless entry.key?(field)

    value = entry[field]
    unless value.is_a?(String) && value.start_with?("http://", "https://")
      add(errors, "#{name}: #{field} must be an http(s) URL, got #{value.inspect}")
    end
  end

  # Optional date fields, when present, must be YYYY-MM-DD.
  DATE_FIELDS.each do |field|
    next unless entry.key?(field)

    value = entry[field].to_s
    add(errors, "#{name}: #{field} must be YYYY-MM-DD, got #{entry[field].inspect}") unless value =~ DATE_RE
  end
end

# Resources default to egocentric scope; "adjacent" entries are related but not first-person.
egocentric = resources.reject { |entry| entry["scope"] == "adjacent" }
adjacent = resources.select { |entry| entry["scope"] == "adjacent" }
egocentric_count = egocentric.length

# --- catalog hygiene warnings ----------------------------------------------
today = Date.today
stale_cutoff = today - 90

missing_verified = egocentric.reject { |entry| entry.key?("verified_at") && !entry["verified_at"].to_s.empty? }
add_warning(warnings, missing_verified, "egocentric resource(s) missing verified_at")

missing_release_note = egocentric.select do |entry|
  %w[watch partial].include?(entry["status"]) && (!entry.key?("release_note") || entry["release_note"].to_s.strip.empty?)
end
add_warning(warnings, missing_release_note, "watch/partial resource(s) missing release_note")

open_datasets_missing_license = egocentric.select do |entry|
  entry["kind"] == "dataset" &&
    entry["status"] == "open" &&
    (!entry.key?("license") || entry["license"].to_s.strip.empty? ||
      !entry.key?("license_url") || entry["license_url"].to_s.strip.empty?)
end
add_warning(warnings, open_datasets_missing_license, "open dataset(s) missing license or license_url")

stale_verified = egocentric.select do |entry|
  next false unless %w[open request partial].include?(entry["status"])
  next false unless entry.key?("verified_at")

  begin
    Date.parse(entry["verified_at"].to_s) < stale_cutoff
  rescue Date::Error
    false
  end
end
add_warning(warnings, stale_verified, "open/request/partial resource(s) verified more than 90 days ago")

# --- README local links and assets -----------------------------------------
readme = File.read(README, encoding: "UTF-8")
markdown_links = readme.scan(/\]\(([^)]+)\)/).flatten
html_links = readme.scan(/\b(?:href|src)="([^"]+)"/).flatten
local_links = (markdown_links + html_links).uniq.reject do |link|
  link.start_with?("http://", "https://", "mailto:", "#")
end

local_links.each do |link|
  path = link.split("#", 2).first
  next if path.empty?

  full_path = File.expand_path(path, ROOT)
  add(errors, "README local link target is missing: #{link}") unless File.exist?(full_path)
end

REQUIRED_ASSETS.each do |asset|
  full_path = File.join(ROOT, asset)
  if !File.file?(full_path)
    add(errors, "missing required asset: #{asset}")
  elsif File.size(full_path).zero?
    add(errors, "empty asset: #{asset}")
  end
end

# --- README <-> catalog consistency -----------------------------------------
resource_count = resources.length

# The headline badge tracks egocentric resources; adjacent ones are listed separately.
badge_match = readme.match(%r{badge/resources-(\d+)-})
if badge_match
  badge_count = badge_match[1].to_i
  if badge_count != egocentric_count
    add(errors, "README resources badge says #{badge_count} but catalog has #{egocentric_count} egocentric resources")
  end
else
  add(errors, "README is missing the resources count badge")
end

if meta.is_a?(Hash) && meta["last_major_audit"]
  audit_date = meta["last_major_audit"].to_s
  updated_match = readme.match(/\*\*Updated:\*\*\s*(\d{4}-\d{2}-\d{2})/)
  if updated_match
    readme_date = updated_match[1]
    if readme_date != audit_date
      add(errors, "README Updated date (#{readme_date}) does not match meta.last_major_audit (#{audit_date})")
    end
  else
    add(errors, "README is missing the **Updated:** date line")
  end
end

coverage = CatalogArtifacts.readme_resource_consistency
unless coverage["readme_missing_in_yaml"].empty?
  add(errors, "README resource labels missing from data/resources.yml: #{coverage['readme_missing_in_yaml'].join(', ')}")
end

unless coverage["yaml_missing_in_readme"].empty?
  add(errors, "catalog resources missing from expected README tables or data/readme_aliases.yml exceptions: #{coverage['yaml_missing_in_readme'].join(', ')}")
end

unknown_alias_targets = CatalogArtifacts.readme_aliases.keys - names
unless unknown_alias_targets.empty?
  add(errors, "data/readme_aliases.yml references unknown catalog resource(s): #{unknown_alias_targets.join(', ')}")
end

# --- taxonomy coverage (warning only) ---------------------------------------
# If data/taxonomy.yml exists, flag task/modality tokens that are not yet in the
# controlled vocabulary. This never fails the build; it just surfaces the long
# tail so it can be consolidated (see docs/taxonomy.md).
def known_tokens(taxonomy, group_key)
  families = taxonomy[group_key]
  return nil unless families.is_a?(Hash)

  set = {}
  families.each do |family, body|
    set[family] = true
    aliases = body.is_a?(Hash) ? body["aliases"] : nil
    Array(aliases).each { |token| set[token] = true }
  end
  set
end

if File.file?(TAXONOMY)
  taxonomy = YAML.load_file(TAXONOMY)
  known_tasks = known_tokens(taxonomy, "task_families")
  known_modalities = known_tokens(taxonomy, "modality_families")

  if known_tasks
    unknown = resources.flat_map { |e| Array(e["tasks"]) }.uniq.reject { |t| known_tasks[t] }.sort
    unless unknown.empty?
      sample = unknown.first(12).join(", ")
      warnings << "#{unknown.length} task token(s) not in data/taxonomy.yml (e.g., #{sample}). See docs/taxonomy.md."
    end
  end

  if known_modalities
    unknown = resources.flat_map { |e| Array(e["modalities"]) }.uniq.reject { |m| known_modalities[m] }.sort
    unless unknown.empty?
      sample = unknown.first(12).join(", ")
      warnings << "#{unknown.length} modality token(s) not in data/taxonomy.yml (e.g., #{sample}). See docs/taxonomy.md."
    end
  end
end

# --- report -----------------------------------------------------------------
unless errors.empty?
  warn "Catalog validation failed with #{errors.length} error(s):"
  errors.each { |message| warn "  - #{message}" }
  exit 1
end

unless warnings.empty?
  warn "Warnings (non-fatal):"
  warnings.each { |message| warn "  - #{message}" }
end

kind_counts = Hash.new(0)
status_counts = Hash.new(0)
resources.each do |entry|
  kind_counts[entry["kind"]] += 1
  status_counts[entry["status"]] += 1
end

puts "Catalog OK: #{resource_count} resources (#{egocentric_count} egocentric, #{adjacent.length} adjacent), #{local_links.length} local README links"
puts "Kinds:    #{kind_counts.sort.map { |k, v| "#{k}=#{v}" }.join(', ')}"
puts "Statuses: #{status_counts.sort.map { |k, v| "#{k}=#{v}" }.join(', ')}"
