greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# {hi there} because informal_greeting is referencing the original object, 
# and mutating it's value. One could use greetings[:a].clone.