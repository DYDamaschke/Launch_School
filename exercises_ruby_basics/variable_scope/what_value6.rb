a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# `my_value': undefined local variable or method `a' for main:Object (NameError)
# a has not been initiated or defined within the method, which is self-contained.