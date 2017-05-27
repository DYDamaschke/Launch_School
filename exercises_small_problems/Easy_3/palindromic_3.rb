def palindrome?(word)
  word.reverse == word
end

def number_palindrome?(number)
  new_number = number.to_s
  palindrome?(new_number)
end

p number_palindrome?(22)
p number_palindrome?(345)
p number_palindrome?(34343)
p number_palindrome?(sprintf("%#o", 03030))
