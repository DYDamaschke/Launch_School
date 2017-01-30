hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
  third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, value|
  value.map do |word|
    word.split('').map do |letter|
      if %w(a, e, i, o, u).include? letter
        puts letter
      else
        next
      end
    end
  end
end