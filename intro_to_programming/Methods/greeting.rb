def greeting(name)
  puts "Hello, #{name}!"
end

puts 'Please enter your name:'
name = gets.chomp

puts greeting(name)