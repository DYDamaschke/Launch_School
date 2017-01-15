def how_many?(arr)
  occurrences = {}
  arr.uniq.each do |element|
    occurrences[element] = arr.count(element)
  end
  
  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

how_many?(["spot", "spot", "dog"])