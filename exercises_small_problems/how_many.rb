def how_many?(arr)
  occurrences = Hash.new(0)
  arr.each { |element| occurrences[element] += 1 }
  occurrences.each { |element, count| puts "#{element} => #{count}" }
  
end

how_many?(["spot", "spot", "dog"])

