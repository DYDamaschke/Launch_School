conf =  [[[1,2], [3, 4]], [5, 6]].map do |element1|
  element1.map do |element2|
    if element2.is_a? Integer
      element2 += 1
    else
      element2.map do |index|
        index += 1
      end
    end
  end
end

p conf