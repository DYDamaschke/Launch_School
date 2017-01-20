a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# '3' because local variables can be accessed within blocks.