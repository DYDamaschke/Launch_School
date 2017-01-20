a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# '7' the 'a' in main is shadowed by the 'a' within the block, so the block has no
# effect on 'a' in main.