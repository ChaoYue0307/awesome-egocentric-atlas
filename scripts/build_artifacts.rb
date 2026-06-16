#!/usr/bin/env ruby
# frozen_string_literal: true

# Builds all checked, generated artifacts from data/resources.yml.
#
# Usage:
#   ruby scripts/build_artifacts.rb
#   ruby scripts/build_artifacts.rb --check

require_relative "lib/catalog_artifacts"

generated = CatalogArtifacts.generated_files

if ARGV.include?("--check")
  stale = []
  generated.each do |path, expected|
    unless File.file?(path)
      warn "Missing #{path}"
      exit 1
    end
    stale << path.sub("#{CatalogArtifacts::ROOT}/", "") if File.read(path, encoding: "UTF-8") != expected
  end

  unless stale.empty?
    warn "Generated artifact(s) out of date:"
    stale.each { |path| warn "  - #{path}" }
    warn "Run: ruby scripts/build_artifacts.rb"
    exit 1
  end

  summary = CatalogArtifacts.summary
  puts "Artifacts OK: #{summary.fetch('egocentric_resources')} egocentric resources (#{summary.fetch('total_resources')} rows)"
else
  generated.each { |path, expected| File.write(path, expected, encoding: "UTF-8") }
  puts "Wrote #{generated.length} generated artifact(s)"
end
