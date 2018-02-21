# method definition
# argument
# calling a method

def draw_segment(character, offset)
  puts "#{' ' * offset}#{character}"
end

n = 30

draw_segment('ʎ', n)
30.times do
  draw_segment('H', n)
  n += rand(5) - 2
end
draw_segment('H', n)
draw_segment('v', n)