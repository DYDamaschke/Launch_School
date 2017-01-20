a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# 'Xyzzy' because while b first references the 'a' string, assignment has changed
# it to point to a NEW string.