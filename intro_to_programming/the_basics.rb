# Exercise 1
"Daniel" + "Damaschke"

# Excercise 2
#A:
6547/1000
#B:
6547%6000/100
#C:
6547%6500/10
#D:
6547%6540/1

# Excerise 3
Movies = {:Practical_Magic => '1998',
 :Hocus_Pocus => '1993',
 :Halloween => '1981',
 :Friday_the_13th => '1980',
 :The_Exorcist => '1973'}
Movies.each {|x, i| puts i }

# Exercise 4
Movie_Dates = []
Movies.each {|x, i| Movie_Dates << i}
Movie_Dates.each {|x| puts x}

# Exercise 5
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# Exercise 6
puts 3.0 * 3.0
puts 4.25 * 4.25
puts 5.67 * 5.67

#Exercise 7
#There is a syntax error on line 16, where ')' was used but '}' was expected. 