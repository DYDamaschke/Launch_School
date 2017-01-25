puts ">> Do you want me to print something? (y/n)"
answer = ''

loop do
answer = gets.chomp.downcase
break if %w(y n).include?(answer)
puts "ERROR: PLEASE ENTER 'Y' FOR YES OR 'N' FOR NO:"
end

puts ">> something" if answer == 'y'