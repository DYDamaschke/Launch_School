#string reference with slice
str = 'The grass is green'

str[4, 5]

#array reference with slice
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
arr[2, 3]
arr[2, 3][0]

#=> 'c', 'd'
#=> 'c'

#hash reference

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

hsh['fruit']    # => "apple"
hsh['fruit'][0] # => "a" because [0] is referencing the string 'apple'.

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }
#=> 'apple' will be overwritten by pear.
hsh = { 'apple' => 'fruit', 'carrot' => 'vegetable', 'pear' => 'fruit' }
#=> This is acceptable, however.

country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
country_capitals.keys      # => [:uk, :france, :germany]
country_capitals.values    # => ["London", "Paris", "Berlin"]
country_capitals.values[0] # => "London" because 0 is referencing the value at index 0.
# naming convention follows the practice of using symbols for keys, so: uk:, france:, etc.
