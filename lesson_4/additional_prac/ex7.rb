statement = "The Flintstones Rock"

b = statement.chars.each_with_object({}) do |letter, hash|
  if letter == ' '
    next
  else
    hash[letter] = statement.count(letter)
  end
end

p b