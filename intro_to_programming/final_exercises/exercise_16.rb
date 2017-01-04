a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map! do |pair|
  pair.split
end

a.flatten

puts a 