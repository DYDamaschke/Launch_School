puts "Please enter a number:"

number = gets.chomp.to_i

while number >= 0
  puts number
  number -= 2
end