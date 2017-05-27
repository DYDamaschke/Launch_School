def oddities(arr)
  new_array = []

  arr.each_with_index do |item, index|
    new_array << item if index == 0 || index.even?
  end

  new_array
end

def evensies(arr)
  new_array = []

  arr.each_with_index do |item, index|
    new_array << item if index.odd?
  end

  new_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([["a", "b", "c"], ["d", "e", "f"]])

p evensies([2, 3, 4, 5, 6])
p evensies([["a", "b", "c"], ["d", "e", "f"]])

#or ===============================

def oddities_2(arr)
  counter = 0
  new_array = []

  while counter <= arr.size
    new_array << arr[counter] if counter.even?
    counter += 1
  end

  new_array
end

def oddities_3(arr)
  new_array = arr.select { |item| arr.index(item).even? }
end

p oddities_3([["a", "b", "c"], ["d", "e", "f"]])
p oddities_3([2, 3, 4, 5, 6])

p oddities_2([2, 3, 4, 5, 6])