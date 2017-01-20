(1..99).each { |number| puts number if number.odd? }

1.upto(99) { |number| puts number if number.odd? }

(1..99).to_a.select { |number| puts number if number % 2 == 1 }