class BarRenderer

  attr_reader :bars

  def initialize(height, bars = [])
    @height = height
    @bars = bars
  end

  def draw
    puts `clear`
    @height.times do |index|
      puts row(index)
    end
  end

  def value(bar_index)
    bars[bar_index].try(:value)
  end

  private

  def row(row_number)
    @bars.collect {|bar| bar.row(row_number)}.join
  end

end
