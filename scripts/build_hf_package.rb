#!/usr/bin/env ruby
# frozen_string_literal: true

# Builds the Hugging Face upload package without mutating the GitHub README.
#
# Usage:
#   ruby scripts/build_hf_package.rb /private/tmp/awesome-egocentric-hf
#   ruby scripts/build_hf_package.rb --check

require_relative "lib/catalog_artifacts"
require "tmpdir"

def usage!
  warn "Usage: ruby scripts/build_hf_package.rb TARGET_DIR"
  warn "   or: ruby scripts/build_hf_package.rb --check"
  exit 1
end

def copy_entry(source, target)
  if File.directory?(source)
    FileUtils.mkdir_p(File.dirname(target))
    FileUtils.cp_r(source, target)
  else
    FileUtils.mkdir_p(File.dirname(target))
    FileUtils.cp(source, target)
  end
end

check = ARGV.include?("--check")
target = if check
  File.join(Dir.tmpdir, "awesome-egocentric-hf-check")
else
  ARGV.first
end
usage! if target.nil? || target.empty?

root = CatalogArtifacts::ROOT
target = File.expand_path(target)

if target == root || root.start_with?("#{target}/")
  warn "Refusing to build Hugging Face package into #{target}"
  exit 1
end

if target.start_with?("#{root}/") && File.dirname(target) != root
  warn "Targets inside the repository must be direct children of #{root}"
  exit 1
end

FileUtils.rm_rf(target)
FileUtils.mkdir_p(target)

exclude = Set.new(%w[.git .github huggingface])
exclude << File.basename(target) if File.dirname(target) == root
Dir.children(root).sort.each do |entry|
  next if exclude.include?(entry)

  copy_entry(File.join(root, entry), File.join(target, entry))
end

header = File.read(CatalogArtifacts::HF_HEADER, encoding: "UTF-8")
github_readme = File.read(CatalogArtifacts::README, encoding: "UTF-8")
File.write(File.join(target, "README.md"), header + github_readme, encoding: "UTF-8")

hf_readme = File.read(File.join(target, "README.md"), encoding: "UTF-8")
unless hf_readme.start_with?("---\n")
  warn "Hugging Face README is missing YAML front matter"
  exit 1
end

if github_readme.start_with?("---\n")
  warn "GitHub README should remain metadata-free"
  exit 1
end

forbidden = %w[.git .github huggingface].select { |entry| File.exist?(File.join(target, entry)) }
unless forbidden.empty?
  warn "Hugging Face package contains excluded path(s): #{forbidden.join(', ')}"
  exit 1
end

puts "Hugging Face package OK: #{target}"
