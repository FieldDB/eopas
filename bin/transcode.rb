#! /usr/bin/env ruby

# call this as: 
# rails runner bin/transcode.rb features/test_data/toolbox2.xml Toolbox

require 'transcription'

t = Transcription.new(:data => File.read(ARGV[0]), :format => ARGV[1])
puts t.to_eopas
if t.errors
  puts t.errors
end