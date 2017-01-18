def is_odd?(int)
  int.remainder(2).abs == 1
end

p is_odd?(3)
p is_odd?(4)
p is_odd?(-27)