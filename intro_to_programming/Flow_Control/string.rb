def Cap_String(words)
  if words.length > 10
    words.upcase
  else
    words
  end
end

puts Cap_String("This is a tester")
puts Cap_String("another")