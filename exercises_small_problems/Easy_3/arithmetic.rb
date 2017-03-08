operators = %w(+ - / * % **)

puts "=> Please enter the first number: "
number1 = gets.chomp.to_f

puts "=> Please enter the second number: "
number2 = gets.chomp.to_f

operators.each do |operator|
  puts "#{number1} #{operator} #{number2} = " +
       "#{eval("#{number1}#{operator}#{number2}")}"
end