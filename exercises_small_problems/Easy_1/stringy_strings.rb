def print_10(int, alt = 1)
  numbers = []
  int.times do |index|
    if alt == 1
      number = index.even? ? 1 : 0
    else
      number = index.even? ? 0 : 1
    end
    numbers << number
  end
  numbers.join
end

p print_10(5, 0) == "10101"
p print_10(1) == "1"
p print_10(9) == "101010101"
p print_10(6) == "101010"