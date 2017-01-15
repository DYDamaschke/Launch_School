def list_digits(int)
  int.to_s.chars.map(&:to_i)
end

p list_digits(12334)