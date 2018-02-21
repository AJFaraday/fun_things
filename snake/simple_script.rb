n = 30

30.times do
  puts "#{' ' * n}x"
  n += rand(3) - 1
end
