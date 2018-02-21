require_relative('bar.rb')

class BarFactory

  attr_accessor :bars

  CHARS = "#\\/=+-|_{}[]@O08H!£$%^&*().,?><`¬"

  def initialize(height, width, num_bars)
    @bars = num_bars.times.collect do
      Bar.new(height, width, rand(height), CHARS[rand(CHARS.length)])
    end
  end

end
