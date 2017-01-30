arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

b = arr.map do |element1|
  element1.select do |num|
    num % 3 == 0
  end
end

p b