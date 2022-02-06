
if ARGV.length != 1
    puts "please input the regex."
    exit
end
require 'csv'
filename = 'words_alpha.csv'
matcher = Regexp.new(ARGV[0])


puts "Using regex match: "+ARGV[0]
puts ""
puts "Word list: "



CSV.foreach("./#{filename}") do |row|
  begin
    next unless row[0].length == 5
    puts row[0] if row[0].match?(matcher)
  end
end