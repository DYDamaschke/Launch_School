def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do 
    puts ">> Please enter a positive or negative integer: "
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts ">> Invalid entry. Please enter a positive/negative integer other than 0."
  end
end

num1 = nil
num2 = nil

loop do
  num1 = read_number
  num2 = read_number

  break if num1 * num2 < 0
  puts ">> Invalid entry. One number must be positive and one must be negative."
  puts ">> Please start over."
end

sum = num1 + num2

puts ">> The sum of #{num1} and #{num2} is #{sum}."
