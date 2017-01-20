loop do
  number = rand(1..10) #random number 1 - 10
  puts "Hello! #{number}"
  if number == 5
    puts "Exiting..."
    break
  end
end