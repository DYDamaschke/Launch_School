def xor?(condition_1, condition_2)
  return false if condition_1 && condition_2
  return false if !condition_1 && !condition_2
  true
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.even?, 4.odd?)
p xor?(5.odd?, 4.even?)

#or =======================================

def xor_2?(condition_1, condition_2)
  (condition_1 && !condition_2) || (condition_2 && !condition_1)
end

p xor_2?(5.even?, 4.even?)
p xor_2?(5.odd?, 4.odd?)
p xor_2?(5.odd?, 4.even?)
p xor_2?(5.even?, 4.odd?)