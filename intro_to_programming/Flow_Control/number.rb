
def num_spot(number)
  if number < 0
    puts "You can't enter a negative number!"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

def num_case(number)
  case 
  when ((number <= 50) && (number >= 0))
    puts "The number is between 0 and 50."
  when ((number >= 51) && (number <= 100))
    puts "The number is between 51 and 100."
  when (number > 100)
    puts "The number you entered is greater than 100."
  else
    puts "You haven't entered a positive number"
  end
end

puts "please enter a number between 0 and 100:"

number = gets.chomp.to_i

num_spot(number)
num_case(number)

