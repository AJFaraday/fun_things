require_relative('bar.rb')
require_relative('bar_renderer.rb')
require_relative('bar_factory.rb')

bar_renderer = BarRenderer.new(40, BarFactory.new(40, 1, 100).bars)

loop do
  bar_renderer.draw
  bar_renderer.bars.each do |bar|
    bar.value += (rand(3) - 1)
  end
  sleep 0.1
end
