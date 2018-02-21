require_relative('bar.rb')

height = 40

bars = [
  Bar.new(height, 5, 20, "H"),
  Bar.new(height, 5, 5, "#"),
  Bar.new(height, 5, 26, "@"),
  Bar.new(height, 5, 29, "0")
]

loop do
  puts `clear`
  height.times do |index|
    puts bars.collect {|bar| bar.row(index)}.join
  end
  bars.each do |bar|
    bar.value += (rand(3) - 1)
  end
  sleep 0.1
end
