loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's right!"
    break
  else
    puts "Wrong answer!"
  end
end
