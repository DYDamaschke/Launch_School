#Exercise_2

puts "Enter what you would like to say, type 'STOP' to exit."
x = gets.chomp

until x == 'STOP'
  puts "You said: #{x}"
  puts "Enter what you would like to say, type 'STOP' to exit."
  x = gets.chomp
end
