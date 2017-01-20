def sum_numbers(integer)
  integer.times do |number|
    number += 1
  end
end

def prod_numbers(integer)
  integer.times do |integer|
    integer *= 1
  end
end

puts "Please enter a number: "
number = gets.to_i

puts "Enter 'S' for the sum of the digits and 'P' for the product."
operation = gets.chomp.downcase

if operation == 's'
  puts "The sum of the integers is: #{sum_numbers(number)}"
else 
  puts "The sum of the integers is: #{prod_numbers(number)}"
end