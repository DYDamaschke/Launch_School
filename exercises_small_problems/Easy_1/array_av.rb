def ret_average(array)
  sum = array.reduce { |sum, number| sum + number}
  sum.to_f / array.count
end

arr = [24, 32, 45, 21]

p ret_average(arr)
