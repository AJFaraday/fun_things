class Bar

  INACTIVE_CHAR = ' '
  ACTIVE_CHAR = '#'

  attr_reader :value
  attr_accessor :direction

  def initialize(height, width, value=0, character=ACTIVE_CHAR)
    @height = height
    @width = width
    @value = value
    @character = character
  end

  def row(row_number)
    char_for_row(row_number) * @width
  end

  def value=(val)
    @value = val
    @value = 0 if val < 0
    @value = @height if val > @height
  end

  private

  def char_for_row(row_number)
    if active_at_row?(row_number)
      @character
    else
      INACTIVE_CHAR
    end
  end

  def active_at_row?(row_number)
    row_number > (@height - @value)
  end

end
