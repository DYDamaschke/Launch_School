def reverse_string(string)
  words = []
  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

p reverse_string('This is a string')
p reverse_string('')
p reverse_string('Hello World')
p reverse_string('Reverse these words')

