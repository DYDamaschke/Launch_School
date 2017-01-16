def reverse_string(string)
  string = string.split 
  string.reverse.join(' ')
end

p reverse_string('This is a string') == 'string a is This'
p reverse_string('') == ''
p reverse_string('Hello World') == 'World Hello'
p reverse_string('Reverse these words') == 'words these Reverse'

