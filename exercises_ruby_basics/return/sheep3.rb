def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0-2 and the nil because return will return the value provided, or nil if no value is provided.