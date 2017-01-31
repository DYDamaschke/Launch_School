arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

b = arr.each_with_object([]) do |inner_arr1, new_arr|
  if inner_arr1.size > 2
    new_arr << inner_arr1
  else
    inner_arr1.each do |inner_arr2|
      if inner_arr2.size > 2
        new_arr << inner_arr2
      else
        inner_arr2.each do |inner_arr3|
          new_arr << inner_arr3
        end
      end
    end
  end
end

p b