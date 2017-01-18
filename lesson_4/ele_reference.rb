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

arr = [4, 3, nil]

arr[3]

#this will return nil because it's out of bounds, but can create problems
# because nil is a valid array object, so is it an error or an element?

#=> prefer fetch because of this, which returns an IndexError.

arr = [4, 3, 5, 6]
arr[-2] #=> 5 (counts from last element, beginning at -1.)

hash.to_a #=> makes array of key value pairs ["k, v", "k, v"]
array.to_h #=> splits array into a has of key value pairs. key value
# pairs must be in nested arrays within the array for this to work.

str = "joe's favorite color is blue"

str[6] = 'F'
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'

arr = [2, 2, 3, 4, 5]
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }


hsh[:apple] = 'Fruit'
hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'