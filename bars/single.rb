require_relative('bar.rb')

height = 30

bar = Bar.new(height, 5, 20)

puts `clear`
height.times do |row_number|
  puts bar.row(row_number)
end

