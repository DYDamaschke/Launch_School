puts 'Please enter your age.'

age = gets.chomp
age = age.to_i
x = 10

4.times do 
  age = age + 10
  puts "In #{x} years you will be #{age}."
  x = x + 10
end