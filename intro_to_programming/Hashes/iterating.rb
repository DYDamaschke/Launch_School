ages = {Bob: 43, John: 56, Sarah: 32, Daniel: 31}

ages.each {|name, age| puts "#{name} is #{age} years old."}

def greeting(name, detail = {})
  if detail.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, my name is #{name} and I am #{detail[:age]} years old. " + 
         "I live in #{detail[:city]}."
  end
end

puts "What is your name?"
name = gets.chomp

puts "How old are you? Press enter if you want to keep it secret."
age = gets.chomp

puts "What city do you live in? Press enter if you're paranoid about stalkers."
city = gets.chomp

if age != "" && city != ""
  greeting(name, {age: age, city: city})
else
  greeting(name)
end


