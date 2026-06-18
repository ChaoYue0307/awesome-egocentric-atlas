# frozen_string_literal: true
# encoding: utf-8
#
# Normalizes every README markdown table for consistent, easy-to-read columns:
#   1. Alignment — short metadata columns (Released, Venue, Status, Link, Year,
#      Access) are centered; names and prose columns stay left. The same rule is
#      applied to every table, so all tables scan identically. (GitHub sizes
#      column widths to content, so alignment is the available readability lever.)
#   2. Sorting — tables whose second column is "Released" are ordered newest-first
#      (descending by release year-month); a bare "YYYY" sorts below dated
#      "YYYY-MM" rows of the same year, and ties keep their original order.
#
# Run: ruby scripts/sort_readme_tables.rb

ROOT = File.expand_path("..", __dir__)
README = File.join(ROOT, "README.md")

CENTER_COLUMNS = ["released", "venue", "status", "link", "year", "access"].freeze

def cells(line)
  line.strip.sub(/\A\|/, "").sub(/\|\z/, "").split("|").map(&:strip)
end

def separator?(line)
  line.strip.match?(/\A\|?[\s:|-]+\|?\z/) && line.include?("-")
end

def aligned_separator(header)
  body = cells(header).map do |name|
    CENTER_COLUMNS.include?(name.downcase) ? ":---:" : ":---"
  end.join(" | ")
  "| #{body} |\n"
end

def sort_key(row)
  released = cells(row)[1].to_s
  m = released.match(/(\d{4})(?:-(\d{2}))?/)
  return -1 unless m
  m[1].to_i * 100 + (m[2] ? m[2].to_i : 0)
end

lines = File.readlines(README, encoding: "UTF-8")
out = []
i = 0
tables = 0

while i < lines.length
  line = lines[i]
  # A table header is a "|...|" line, immediately followed by a separator line.
  if line.lstrip.start_with?("|") && i + 1 < lines.length && separator?(lines[i + 1])
    header = line
    body = []
    j = i + 2
    while j < lines.length && lines[j].lstrip.start_with?("|")
      body << lines[j]
      j += 1
    end

    sep = aligned_separator(header)
    if cells(header)[1]&.downcase == "released" && body.length > 1
      body = body.each_with_index.sort_by { |row, idx| [-sort_key(row), idx] }.map(&:first)
    end
    out.push(header, sep, *body)
    tables += 1
    i = j
  else
    out << line
    i += 1
  end
end

File.write(README, out.join)
puts "Formatted #{tables} README table(s): consistent column alignment + newest-first sorting."
