require_relative('bar.rb')
require_relative('bar_renderer.rb')
require_relative('bar_factory.rb')

bar_renderer = BarRenderer.new(40, BarFactory.new(40, 1, 200).bars)

turn = 0
loop do
  turn += 1
  bar_renderer.draw

  # Try to be the average of your neighbours
  bar_renderer.bars.each_with_index do |bar, index|
    neighbours = [
      bar_renderer.bars[index-1],
      bar_renderer.bars[index+1]
    ].compact
    neighbour_values = neighbours.map {|x| x.value.to_f}
    sum = neighbour_values.inject(0, :+)
    average = (sum / neighbours.count)
    bar.direction = average <=> bar.value
  end
  bar_renderer.bars.each do |bar|
    bar.value += (rand(2) * bar.direction)
  end

  # Every 50th turn, throw a cat amongst the pidgeons
  if turn % 50 == 0 and turn < 400
    4.times do
      random_bar = bar_renderer.bars[rand(bar_renderer.bars.length)]
      random_bar.value = 40
    end
  end

  # Every 100th turn, throw a bigger cat amongst the pidgeons
  if turn % 100 == 0 and turn < 400
    8.times do
      random_bar = bar_renderer.bars[rand(bar_renderer.bars.length)]
      random_bar.value = 0
    end
  end
  puts turn
  sleep 0.1
end
