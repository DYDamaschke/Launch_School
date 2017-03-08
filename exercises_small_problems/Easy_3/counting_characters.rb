puts "Please type a word or words:"
words = gets.chomp

character_count = words.each_char.select do |character|
  character unless character == " "
end

puts "There are #{character_count.size} characters in '#{words}'."

#or ==============================================

character_count = words.delete(" ").size

puts "There are #{character_count} characters in '#{words}'."