def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# This will print 'Dinner' first, because of the call to puts inside 'meal', but 
# then will print 'nil' because the puts inside 'meal' causes meal to return nil.