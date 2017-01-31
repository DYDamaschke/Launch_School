flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index { |name, ind| puts ind if name[0, 2].match('Be') }

#or

p flintstones.index { |name| name[0, 2] == 'Be' }
