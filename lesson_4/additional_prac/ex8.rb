numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1, 3 because we are changing the indices of each number are changing as we are 
# removing the value at the first and shifting them with each iteration. So 2 and
# 4 never get counted.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1, 2 because with each iteration we are removing the last element (technically returning
# an array with each one removed, but 'each' ignores the return value of the block).