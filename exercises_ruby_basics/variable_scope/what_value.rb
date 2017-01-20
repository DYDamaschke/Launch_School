a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# This prints '7' because my_value has not modified a's object, but pointed to a new object.