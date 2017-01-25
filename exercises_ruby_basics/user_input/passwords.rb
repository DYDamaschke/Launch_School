PASSWORD = "H3llo K1tty"

puts ">> Please enter your password: "

loop do
  user_pass = gets.chomp
  break if user_pass == PASSWORD
  puts "Invalid Password. Please re-enter your password."
end

puts "Welcome User!"
