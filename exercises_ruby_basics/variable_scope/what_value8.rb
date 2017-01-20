array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# undefined local variable or method because instance variables are only accessible
# to the objects that create them. Once we leave the block, they are forgotten.