#!/usr/bin/env ruby
# jekyll_frontmatter.rb - Utility for reading and updating Jekyll front matter

require 'yaml'
require 'json'
require 'date'

def parse_file(path)
  lines = File.readlines(path)
  
  # Find front matter boundaries (between --- markers)
  i1 = lines.index { |l| l.strip == "---" }
  i2 = i1 && lines[(i1+1)..-1].index { |l| l.strip == "---" }
  
  if i1 && i2
    fm_lines = lines[(i1+1)..(i1+1+i2-1)]
    body_lines = lines[(i1+1+i2+1)..-1] || []
    fm = YAML.safe_load(fm_lines.join, permitted_classes: [Date, Time], aliases: true) || {}
    body = body_lines.join.strip
  else
    fm = {}
    body = lines.join.strip
  end
  
  { front_matter: fm, body: body }
end

def write_file(path, front_matter, body)
  File.open(path, "w") do |f|
    f.puts "---"
    f.write YAML.dump(front_matter).sub(/^---\n/, "")
    f.puts "---"
    f.write body
    f.write "\n" unless body.end_with?("\n")
  end
end

# Command line interface
if __FILE__ == $0
  command = ARGV[0]
  
  case command
  when "read"
    # Usage: jekyll_frontmatter.rb read <file>
    # Output: JSON with front_matter and body
    path = ARGV[1]
    result = parse_file(path)
    puts result.to_json
    
  when "update"
    # Usage: jekyll_frontmatter.rb update <file> <key> <value>
    # Updates or adds a key in the front matter
    path = ARGV[1]
    key = ARGV[2]
    value = ARGV[3]
    
    parsed = parse_file(path)
    parsed[:front_matter][key] = value
    
    lines = File.readlines(path)
    i1 = lines.index { |l| l.strip == "---" }
    i2 = i1 && lines[(i1+1)..-1].index { |l| l.strip == "---" }
    
    if i1 && i2
      body_lines = lines[(i1+1+i2+1)..-1] || []
      write_file(path, parsed[:front_matter], body_lines.join)
      puts "✓ Updated #{key}: #{value}"
    else
      puts "Error: Could not parse front matter"
      exit 1
    end
    
  else
    puts "Usage:"
    puts "  #{$0} read <file>                 # Output front matter as JSON"
    puts "  #{$0} update <file> <key> <value> # Update front matter field"
    exit 1
  end
end

