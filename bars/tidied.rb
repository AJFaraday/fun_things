require_relative('bar.rb')
require_relative('bar_renderer.rb')

height = 40

bar_renderer = BarRenderer.new(
  40,
  [
    Bar.new(height, 5, 10, '|'),
    Bar.new(height, 5, 10, '#'),
    Bar.new(height, 1, 15, 'H'),
    Bar.new(height, 10, 20, '/'),
    Bar.new(height, 1, 15, '?'),
    Bar.new(height, 5, 10, '\\'),
    Bar.new(height, 5, 10, '0')
  ]
)

loop do
  bar_renderer.draw
  bar_renderer.bars.each do |bar|
    bar.value += (rand(3) - 1)
  end
  sleep 0.1
end
