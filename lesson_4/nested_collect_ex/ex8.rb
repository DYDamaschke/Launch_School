arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

b = arr.each_with_object({}) do |main, hash|
  hash[main[0]] = main[1]
end

p b
    