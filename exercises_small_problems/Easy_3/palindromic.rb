def palindrome?(word)
  word.reverse == word
end

def palindromic?(word)
  new_word = word.downcase.delete("^a-z0-9")
  palindrome?(new_word)
end

p palindrome?("madam")
p palindrome?("Madam")
p palindrome?([3, 2, 3])

p palindromic?("Madam")
p palindromic?("Mad Dam")
p palindromic?("Mad'Dam")
