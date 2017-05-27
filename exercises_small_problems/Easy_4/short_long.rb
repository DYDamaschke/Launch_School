def word_blend(word_1, word_2)
  return word_1 + word_2 + word_1 if word_1.length < word_2.length
  word_2 + word_1 + word_2
end

p word = word_blend("Palendulum", "People")