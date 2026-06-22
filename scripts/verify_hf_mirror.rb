#!/usr/bin/env ruby
# frozen_string_literal: true

# Verifies that the public Hugging Face mirror exposes the key generated signals
# from a locally built HF package.
#
# Usage:
#   ruby scripts/verify_hf_mirror.rb hf-upload cy0307/awesome-egocentric-atlas

require "json"
require "open-uri"

package_dir = ARGV[0] || "hf-upload"
repo_id = ARGV[1] || ENV.fetch("HF_REPO_ID", "cy0307/awesome-egocentric-atlas")
repo_type = ENV.fetch("HF_REPO_TYPE", "dataset")

unless File.directory?(package_dir)
  warn "HF package directory is missing: #{package_dir}"
  exit 1
end

prefix = case repo_type
when "dataset"
  "datasets/"
when "space"
  "spaces/"
else
  ""
end
base = "https://huggingface.co/#{prefix}#{repo_id}/resolve/main"

def fetch_text(url, attempts: 5)
  last_error = nil
  attempts.times do |index|
    return URI.open(url, "Cache-Control" => "no-cache").read
  rescue OpenURI::HTTPError, SocketError, SystemCallError, Timeout::Error => e
    last_error = e
    sleep(3 * (index + 1))
  end

  warn "Could not fetch #{url}: #{last_error.class}: #{last_error.message}"
  exit 1
end

local_site = JSON.parse(File.read(File.join(package_dir, "site-data.json"), encoding: "UTF-8"))
remote_site = JSON.parse(fetch_text("#{base}/site-data.json?download=1&ts=#{Time.now.to_i}"))
local_summary = local_site.fetch("summary")
remote_summary = remote_site.fetch("summary")

%w[egocentric_resources total_resources adjacent_resources].each do |key|
  next if remote_summary[key] == local_summary[key]

  warn "HF site-data summary mismatch for #{key}: local=#{local_summary[key].inspect}, remote=#{remote_summary[key].inspect}"
  exit 1
end

local_date = local_site.fetch("meta").fetch("last_major_audit")
remote_date = remote_site.fetch("meta").fetch("last_major_audit")
if remote_date != local_date
  warn "HF site-data audit date mismatch: local=#{local_date.inspect}, remote=#{remote_date.inspect}"
  exit 1
end

remote_readme = fetch_text("#{base}/README.md?download=1&ts=#{Time.now.to_i}")
required = [
  "Datasets, benchmarks, models, and tools for egocentric AI.",
  "**Updated:** #{local_date}.",
  "badge/resources-#{local_summary.fetch('egocentric_resources')}-"
]
missing = required.reject { |needle| remote_readme.include?(needle) }
unless missing.empty?
  warn "HF README is missing expected signal(s): #{missing.join(', ')}"
  exit 1
end

if remote_readme.include?("config_name: papers")
  warn "HF README should keep awesome-egocentric-papers.csv as a raw sheet, not a dataset config"
  exit 1
end

local_papers_path = File.join(package_dir, "awesome-egocentric-papers.csv")
unless File.file?(local_papers_path)
  warn "HF package is missing awesome-egocentric-papers.csv"
  exit 1
end

local_papers = File.read(local_papers_path, encoding: "UTF-8")
remote_papers = fetch_text("#{base}/awesome-egocentric-papers.csv?download=1&ts=#{Time.now.to_i}")
unless remote_papers == local_papers
  warn "HF papers CSV mismatch"
  exit 1
end

puts "Hugging Face mirror OK: #{repo_id} (#{local_summary.fetch('egocentric_resources')} egocentric resources, #{local_date})"
