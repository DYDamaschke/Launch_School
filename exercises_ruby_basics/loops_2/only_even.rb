number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number 
end

# next is placed between number and puts so that the number increments
# with each loop, but only cascades to puts if the number isn't odd.