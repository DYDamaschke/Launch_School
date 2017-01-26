# 1. returns all elements because 'hi' returns true.
# 2. count, when given a block, returns the number of elements that return true.
# =>so count considered the 'truthiness' of the block's return value.
# 3. Returns original objects since block's return is false b/c of 'puts'
# 4. {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'} because we are only accessing the
# character at index 0 of each string and assigning the whole string to it.
# 5. Shift removes the first key/value pair from hsh and returns a 2 element array.
# 6. 11, because pop removes the last element of array and returns it to size, which
# => counts the length of the given string.
# 7. .odd? returns a Boolean, and b/c it's the last expression, the block returns boolean.
# 8. Returns first 'n' of array, non-destructive b/c returns new array.
# 9. [nil, "bear"] because for ant, 'if' was false and returned nothing, which means nil.
# 10. [1, nil, nil] 'puts' is evaluated for 2 + 3, which returns nil.
# 11. arr.sort {|a, b| b.to_i <=> a.to_i } 
# 12. books.sort_by { |title| title[:published] }