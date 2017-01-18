SQINCH_TO_CENT = 6.4516
SQFT_TO_INCH = 144

puts "Enter the length of the room in feet:"
length = gets.to_f

puts "Enter the width of the room in feet:"
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFT_TO_INCH).round(2)
square_cent = (square_inches * SQINCH_TO_CENT).round(2)

puts "The area of the room is #{square_feet} square feet (#{square_inches} square inches/#{square_cent} square centimeters)."

