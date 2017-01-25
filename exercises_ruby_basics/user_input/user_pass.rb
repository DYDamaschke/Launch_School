PASSWORD = "H3llo K1tty"
USERNAME = "Dalai_Lama"

loop do
puts ">> Please enter your Username: "
user = gets.chomp

puts ">> Please enter your password: "
pass = gets.chomp

break if (pass == PASSWORD) && (user == USERNAME)
puts ">> Invalid Username or Password."
end

puts "Welcome, #{USERNAME}!"
