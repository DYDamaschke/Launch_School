hashie = {size: 32, waist: 28, length: 32}

puts hashie.has_key?(:waist)
puts hashie.has_key?(:width)

puts hashie.select { |x,i| x == :size }

puts hashie.fetch(:waist)
puts hashie.fetch(:width, "You obviously don't know what you're asking.")

puts hashie.keys
puts hashie.values