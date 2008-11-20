require "rubygems"
require File.dirname(__FILE__) + '/../lib/ascii_art'

if !ARGV.size.between?(1, 2)
  puts "Usage: ruby image2ascii IMAGE_FILE [COLUMNS=80]"
  puts "Display given IMAGE_FILE (regular file or URL) as colored ascii art.\nCOLUMNS defines number of chars per one line."
  exit 1
end

file = ARGV.first
width = (ARGV[1] || 80).to_i

ascii_art = AsciiArt.from_image_file(file, width, true)
print ascii_art.to_text
