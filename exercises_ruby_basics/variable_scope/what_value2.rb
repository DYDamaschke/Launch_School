a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# This prints '7' because though the variables look the same, the variable within the method
# is entirely different than the one in main. 