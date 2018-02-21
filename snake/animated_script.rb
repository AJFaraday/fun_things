# infinite loop

n = 50

loop do
  puts "#{' ' * n.abs}x"
  n += rand(9) - 4
  sleep 0.1
end
