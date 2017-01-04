h1 = { a: 200, b: 300, c: 800}

h2 = { d: 458, e: 345, f: 671}

puts h1.merge(h2) #this creates a new hash without modifying the original
puts h1

puts h1.merge!(h2) #this modifies the original hash
puts h1