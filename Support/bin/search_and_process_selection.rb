#!/usr/bin/env ruby
# Author: Mario "kuroir" Ricalde ( http://kuroir.com )
output = String.new
selection = ENV['TM_SELECTED_TEXT']
file = File.new ENV['TM_FILEPATH'], "r"
while line = file.gets
  output << if selection.nil?
      line
    else 
      line.gsub(selection, "‹#{ENV['TM_SELECTED_TEXT']}›")
    end
end
file.close
puts output