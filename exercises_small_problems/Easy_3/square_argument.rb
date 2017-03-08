def multiply(number_1, number_2)
  number_1 * number_2
end

def square_number(number, power=2)
  new_number = number
  (power - 1).times { new_number = multiply(new_number, number) }
  new_number
end

p square_number(6, 3)