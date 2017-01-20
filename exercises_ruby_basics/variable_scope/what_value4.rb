a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# 'Xy-zy' while integers are immutable, strings are mutable. Now b is modifying
# the string that a is point to, so a is changed as well.