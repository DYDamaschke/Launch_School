def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator: "
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts ">> Invalid number. Please enter an integer."
end

loop do
  puts ">> Please enter the denominator: "
  denominator = gets.chomp
  
  if valid_number?(denominator) && denominator.to_i > 0
    break
  elsif denominator.to_i == 0
    puts ">> Invalid number. Please enter an integer > 0."
  else
    puts "Invalid denominator. Only integers are allowed."
  end
end

quotient = numerator.to_i / denominator.to_i

puts "#{numerator} / #{denominator} is #{quotient}"