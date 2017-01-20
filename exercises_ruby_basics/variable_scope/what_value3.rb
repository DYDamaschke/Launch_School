a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# '7' again, because methods are self-contained.