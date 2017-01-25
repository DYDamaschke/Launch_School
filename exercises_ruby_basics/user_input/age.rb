puts ">> Tell me your age in years: "
age_years = ''

loop do
age_years = gets.to_i
break if age_years > 0
puts ">> Please enter a valid number of years: "
end

age_months = age_years * 12

puts ">> You are #{age_months} months old."