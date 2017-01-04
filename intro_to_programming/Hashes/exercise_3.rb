menu = { drinks: ["Coke", "Dr. Pepper", "Lemonade", "Tea"],
         snacks: ["Potato Chips", "Carrot Sticks", "Chocolate"],
         meals: ["Chili", "Beef Stew", "Stir Fry"]}

puts menu.keys

puts menu.values

menu.each { |k,v| puts "#{k}: #{v}"}