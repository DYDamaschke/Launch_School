# Get two numbers from user
# Ask the user for an operation
# perfom the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_integer?(num)
  /^\d+$/.match(num)
end

def valid_float?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
end

def number?(num)
  valid_integer?(num) || valid_float?(num)
end

def operator_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end
  word
end

prompt(MESSAGES['welcome'])

name = ''

loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greet']+ " #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = gets.chomp

    if number?(number1) 
      break
    else
      prompt(MESSAGES['num_error'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = gets.chomp

    if number?(number2) 
      break
    else
      prompt(MESSAGES['num_error'])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?

    1) add
    2) subtract
    3) Multiply
    4) divide

  MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['op_error'])
    end
  end

  prompt("#{operator_to_message(operator)} "+ MESSAGES['op_message'])

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt(MESSAGES['result']+ " #{result}.")

  prompt(MESSAGES['continue'])
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end
prompt(MESSAGES['goodbye'])
