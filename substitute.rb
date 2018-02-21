s = "The quick brown fox jumps over the lazy dog"
vowels = %w{a e i o u}

vowels.each_with_index do |vowel, index|
  s.gsub!(vowel,"SUB#{index}SUB")
end

vowels.each_with_index do |vowel, index|
  s.gsub!("SUB#{index}SUB", vowels[(index+1) % vowels.length])
end

puts s