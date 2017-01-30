a = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |element1|
  incremented_hash = {}
  element1.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

p a

