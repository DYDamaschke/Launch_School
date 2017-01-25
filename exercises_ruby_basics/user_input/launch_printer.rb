loop do 
puts ">> How many lines would you like to print? Please enter a number >= 3 (Q to quit):"
number = gets.chomp
break if number.downcase == 'q'

loop do
  break if number.to_i >= 3
  puts ">> Please enter a number greater than/equal to 3 (Q to quit):"
  number = gets.chomp
end

number.to_i.times {puts "Launch School is the best!"}
end
