my_array = [1, 5, 5, 6, 3, 7, 8]

puts my_array

my_array.pop

puts my_array.uniq

my_array.uniq!

puts my_array.last

my_array.select {|i| puts i > 5}

my_array.push(5)

my_array.unshift(3)

puts my_array

my_array.each_index { |i| puts "This is index #{i}" }

my_array.each_with_index { |val, ind| puts "#{ind + 1}. #{val}"}

print my_array.product([3, 4])
