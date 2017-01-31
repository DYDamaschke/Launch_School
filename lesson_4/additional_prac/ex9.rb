def titleize(sentence)
  words = sentence.split(' ')
  caps = words.map do |word|
    word.capitalize
  end
  
  caps.join(' ')
end

words = "the flintstones rock"

p titleize(words)

#or

p words.split.map { |word| word.capitalize }.join(' ')

