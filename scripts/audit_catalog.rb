#!/usr/bin/env ruby
# frozen_string_literal: true

# Prints a non-failing catalog quality report.
#
# Usage:
#   ruby scripts/audit_catalog.rb

require_relative "lib/catalog_artifacts"

resources = CatalogArtifacts.resources
egocentric = resources.reject { |entry| entry["scope"] == "adjacent" }
summary = CatalogArtifacts.summary
today = Date.today
stale_cutoff = today - 90

def count_by(rows, field)
  counts = Hash.new(0)
  rows.each { |entry| counts[entry[field]] += 1 if entry[field] }
  counts.sort.to_h
end

def sample_names(rows, limit = 12)
  rows.first(limit).map { |entry| entry["name"] }
end

def count_by_value(rows)
  counts = Hash.new(0)
  rows.each { |value| counts[value] += 1 if value }
  counts.sort.to_h
end

missing_verified = egocentric.reject { |entry| entry.key?("verified_at") && !entry["verified_at"].to_s.empty? }
watch_without_note = egocentric.select do |entry|
  %w[watch partial].include?(entry["status"]) &&
    (!entry.key?("release_note") || entry["release_note"].to_s.strip.empty?)
end
open_datasets_missing_license = egocentric.select do |entry|
  entry["kind"] == "dataset" &&
    entry["status"] == "open" &&
    (!entry.key?("license") || entry["license"].to_s.strip.empty? ||
      !entry.key?("license_url") || entry["license_url"].to_s.strip.empty?)
end
stale_verified = egocentric.select do |entry|
  next false unless %w[open request partial].include?(entry["status"])
  next false unless entry["verified_at"]

  Date.parse(entry["verified_at"].to_s) < stale_cutoff
rescue ArgumentError, Date::Error
  false
end

puts "# Awesome Egocentric Atlas Audit"
puts
puts "Generated: #{today}"
puts "Total resources: #{summary.fetch('total_resources')} (#{summary.fetch('egocentric_resources')} egocentric, #{summary.fetch('adjacent_resources')} adjacent)"
puts
puts "## Counts"
puts "Kinds:    #{count_by(egocentric, 'kind').map { |k, v| "#{k}=#{v}" }.join(', ')}"
puts "Statuses: #{count_by(egocentric, 'status').map { |k, v| "#{k}=#{v}" }.join(', ')}"
puts "Years:    #{count_by_value(egocentric.map { |entry| CatalogArtifacts.resource_year(entry) }).map { |k, v| "#{k}=#{v}" }.join(', ')}"
puts
puts "## Quality Signals"
puts "Missing verified_at: #{missing_verified.length}"
puts "Watch/partial missing release_note: #{watch_without_note.length}"
puts "Open datasets missing license/license_url: #{open_datasets_missing_license.length}"
puts "Open/request/partial verified more than 90 days ago: #{stale_verified.length}"
puts
puts "## Samples"
puts "Missing verified_at: #{sample_names(missing_verified).join(', ')}"
puts "Watch/partial missing release_note: #{sample_names(watch_without_note).join(', ')}"
puts "Open datasets missing license/license_url: #{sample_names(open_datasets_missing_license).join(', ')}"
puts "Stale verified_at: #{sample_names(stale_verified).join(', ')}"
puts
puts "## README Coverage"
coverage = CatalogArtifacts.readme_resource_consistency
puts "README resource labels: #{coverage.fetch('readme_labels').uniq.length}"
puts "README labels not in YAML: #{coverage.fetch('readme_missing_in_yaml').length}"
puts "YAML resources not in README: #{coverage.fetch('yaml_missing_in_readme').length}"
