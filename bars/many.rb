require_relative('bar.rb')

height = 30

bars = [
  Bar.new(height, 5, 20, "H"),
  Bar.new(height, 5, 5, "#"),
  Bar.new(height, 5, 26, "@"),
  Bar.new(height, 5, 29, "0")
]

puts `clear`
height.times do |index|
  puts bars.collect{|bar|bar.row(index)}.join
end

