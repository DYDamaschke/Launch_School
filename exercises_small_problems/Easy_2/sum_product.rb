def sum_numbers(integer)
  (1..integer).inject(:+)
end

def prod_numbers(integer)
  (1..integer).inject(:*)
end

operation = ''
number = ''

loop do
puts "Please enter a number greater than zero: "
number = gets.to_i
break if number > 0
end

loop do
puts "Enter 'S' for the sum of the digits and 'P' for the product."
operation = gets.chomp.downcase
break if (operation == 's') || (operation == 'p')
end

if operation == 's'
  puts "The sum of the integers is: #{sum_numbers(number)}"
else
  puts "The product of the integers is: #{prod_numbers(number)}"
end