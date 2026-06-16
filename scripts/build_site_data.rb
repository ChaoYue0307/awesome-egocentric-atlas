#!/usr/bin/env ruby
# frozen_string_literal: true

# Backward-compatible wrapper for the site JSON/CSV subset of the artifact build.
#
# Usage:
#   ruby scripts/build_site_data.rb
#   ruby scripts/build_site_data.rb --check

require_relative "lib/catalog_artifacts"

targets = {
  CatalogArtifacts::SITE_DATA => CatalogArtifacts.site_json,
  CatalogArtifacts::CSV_OUTPUT => CatalogArtifacts.csv
}

if ARGV.include?("--check")
  stale = []
  targets.each do |path, expected|
    unless File.file?(path)
      warn "Missing #{path}"
      exit 1
    end
    stale << File.basename(path) if File.read(path, encoding: "UTF-8") != expected
  end

  unless stale.empty?
    warn "#{stale.join(' and ')} out of date. Run: ruby scripts/build_artifacts.rb"
    exit 1
  end

  summary = CatalogArtifacts.summary
  puts "Site data OK: #{summary.fetch('egocentric_resources')} egocentric resources (#{summary.fetch('total_resources')} rows)"
else
  targets.each { |path, expected| File.write(path, expected, encoding: "UTF-8") }
  puts "Wrote #{CatalogArtifacts::SITE_DATA} and #{CatalogArtifacts::CSV_OUTPUT}"
end
