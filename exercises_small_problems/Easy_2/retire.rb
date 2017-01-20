YEAR = Time.now.year 

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
ret_age = gets.to_i

years_to_go = ret_age - age

puts "It's #{YEAR}. You will retire in #{YEAR + years_to_go}."
puts "You only have #{years_to_go} to go!"