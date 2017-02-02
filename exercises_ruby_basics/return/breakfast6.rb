def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# This will print 'Breakfast' because the 'meal' calls return before it evaluates
# anything else inside the method.