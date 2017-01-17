def sum_of_digits(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

p sum_of_digits(43)