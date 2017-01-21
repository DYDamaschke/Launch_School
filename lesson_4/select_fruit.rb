def select_fruit(produce_list)
  fruits = {}
  list_keys = produce_list.keys
  count = 0
  loop do
    break if count == produce_list.size
    
    current_key = list_keys[count]
    current_value = produce_list[current_key]
    
    if current_value == 'Fruit'
      fruits[current_key] = current_value
    end
    
    count += 1
  end
  
  fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}