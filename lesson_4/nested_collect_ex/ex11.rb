arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

b = arr.select do |element1|
    element1.all? do |_, value|
      value.all? do |num|
        num.even?
      end
    end
end

p b