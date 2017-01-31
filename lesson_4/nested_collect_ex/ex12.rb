arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

b = arr.map do |word|
  if word.is_a? Array
    word.select do |word2|
      if word2.is_a? Array
        word.select do |word3|
          word
        end
      else
        word
      end
    end
  else
    word
  end
end

p b