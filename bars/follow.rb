require_relative('bar.rb')
require_relative('bar_renderer.rb')
require_relative('bar_factory.rb')

bar_renderer = BarRenderer.new(40, BarFactory.new(40, 4, 10).bars)

loop do
  bar_renderer.draw

  # Try to be the average of your neighbours
  bar_renderer.bars.each_with_index do |bar, index|
    # get average value of my neighbouring bars
    neighbours = [
      bar_renderer.bars[index-1],
      bar_renderer.bars[index+1]
    ].compact
    neighbour_values = neighbours.map {|x| x.value.to_f}
    sum = neighbour_values.inject(0, :+)
    average = (sum / neighbours.count)
    bar.direction = average <=> bar.value
    # direction will be 1, 0 or -1
  end
  bar_renderer.bars.each do |bar|
    bar.value += (rand(2) * bar.direction)
  end

  sleep 0.1
end
