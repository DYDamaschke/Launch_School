y = 0

3.times do 
  y += 1
  x = y
end

puts x

# this returns an error because x is initialized inside of the block, and can't be accessed outside of its scope.