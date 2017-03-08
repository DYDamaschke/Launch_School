counter = 1
numbers = []

while counter <= 5
  puts "=> Enter number #{counter}:"
  number = gets.chomp.to_i
  numbers << number
  counter += 1
end

puts "=> Enter the last number:"
number = gets.chomp.to_i
if numbers.include?(number)
  puts "=> #{number} is included in #{numbers}."
else
  puts "=> #{number} isn't included in #{numbers}."
end