name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This prints BOB BOB because upcase! is mutating the string that both
# variables are pointing to.