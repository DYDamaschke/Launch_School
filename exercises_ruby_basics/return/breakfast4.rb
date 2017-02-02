def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# This prints 'Dinner' and then 'Breakfast' because the method is called, and inside
# the method puts prints the first string to the screen before the method moves on to
# return 'Breakfast' to the puts in main.