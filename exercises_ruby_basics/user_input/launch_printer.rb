puts ">> How many lines would you like to print? Please enter a number >= 3:"
number = ''

loop do
  number = gets.to_i
  break if number >= 3
  puts ">> Please enter a number greater than/equal to 3:"
end

number.times {puts "Launch School is the best!"}