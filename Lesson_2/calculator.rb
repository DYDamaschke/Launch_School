# Get two numbers from user
# Ask the user for an operation
# perfom the operation on the two numbers
# output the result
 

puts "Please enter the first number:"

number1 = gets.chomp


puts "Please enter the second number:"

number2 = gets.chomp


puts "Please enter +, -, * or /"

operator = gets.chomp

if action == "+"
  result = number_1.to_i + number_2.to_i
elsif action == "-"
  result =  number_1.to_i - number_2.to_i
elsif action == "*"
  result = number_1.to_i * number_2.to_i
else
  result =  number_1.to_f / number_2.to_f
end


puts "The result is #{result}."