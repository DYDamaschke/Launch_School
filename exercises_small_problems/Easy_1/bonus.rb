def bonus_amount(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts bonus_amount(2800, true) == 1400
puts bonus_amount(1000, false) == 0
puts bonus_amount(50000, true) == 25000
