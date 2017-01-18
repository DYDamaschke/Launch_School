def find_age
  age = Random.new.rand(20..200)
end

p "Teddy's age is #{find_age}"

puts "Tell me your name... I'll tell you how old you are."
new_name = gets.chomp

new_name = 'Teddy' if new_name == ''

puts "Your name is #{new_name} and you are #{find_age} years old."