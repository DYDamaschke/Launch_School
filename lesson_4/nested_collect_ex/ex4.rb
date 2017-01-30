hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
  third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |value|
  value.map do |word|
    word.chars.select do |letter|
      puts letter if %w(a e i o u).include? letter
    end
  end
end