def display_hello
  "Hello"
end

def display_world
  "World"
end

def display_greet
  "#{display_hello} #{display_world}"
end

puts "#{display_hello} #{display_world}"
puts display_greet
