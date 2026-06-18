# frozen_string_literal: true
# encoding: utf-8
#
# Sorts every README resource table that has a "Released" second column so the
# most recent entries appear on top (descending by release year-month). Tables
# without a Released column (Surveys, Watchlist, Creator notes, ...) are left
# untouched. Run: ruby scripts/sort_readme_tables.rb
#
# A bare "YYYY" sorts below dated "YYYY-MM" rows of the same year. Ties keep
# their original relative order (stable).

ROOT = File.expand_path("..", __dir__)
README = File.join(ROOT, "README.md")

def cells(line)
  line.strip.sub(/\A\|/, "").sub(/\|\z/, "").split("|").map(&:strip)
end

def separator?(line)
  line.strip.match?(/\A\|?[\s:|-]+\|?\z/) && line.include?("-")
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
tables_sorted = 0

while i < lines.length
  line = lines[i]
  # A table header is a "|...|" line, followed by a separator line.
  if line.lstrip.start_with?("|") && i + 1 < lines.length && separator?(lines[i + 1])
    header = line
    sep = lines[i + 1]
    body = []
    j = i + 2
    while j < lines.length && lines[j].lstrip.start_with?("|")
      body << lines[j]
      j += 1
    end

    if cells(header)[1]&.downcase == "released" && body.length > 1
      sorted = body.each_with_index.sort_by { |row, idx| [-sort_key(row), idx] }.map(&:first)
      tables_sorted += 1 if sorted != body
      out.push(header, sep, *sorted)
    else
      out.push(header, sep, *body)
    end
    i = j
  else
    out << line
    i += 1
  end
end

File.write(README, out.join)
puts "Sorted #{tables_sorted} README table(s) newest-first."
