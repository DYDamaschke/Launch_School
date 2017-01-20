puts "What is your name?"
user_name = gets
user_name.chomp!

if user_name[-1] == '!'
  user_name.chop!
  puts "HELLO, #{user_name.upcase}. WHY ARE WE YELLING?"
else
  puts "Hello, #{user_name}."
end