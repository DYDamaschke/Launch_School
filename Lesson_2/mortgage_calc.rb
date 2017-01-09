require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def monthly_int(interest)
  ann_interest = interest / 100
  ann_interest / 12
end

def month_term(ann_term)
  ann_term * 12
end

def prompt(string)
  puts "=> #{string}"
end

def number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def monthly_pay(amount, interest, duration)
  interest = monthly_int(interest.to_f)
  duration = month_term(duration.to_f)
  amount.to_f * (interest / (1.0 - (1.0 + interest)**(-duration)))
end

def zero_interest(amount, duration)
  duration = month_term(duration.to_f)
  amount.to_f / duration
end

prompt(MESSAGES['welcome'])

loop do
  prompt(MESSAGES['loan_amount'])

  loan = ''

  loop do
    loan = gets.chomp

    if number?(loan) == false
      prompt(MESSAGES['num_error'])
    else
      break
    end
  end

  prompt(MESSAGES['interest'])

  interest = ''

  loop do
    interest = gets.chomp

    if number?(interest) == false
      prompt(MESSAGES['int_error'])
    else
      break
    end
  end

  prompt(MESSAGES['ann_term'])

  ann_term = ''

  loop do
    ann_term = gets.chomp

    if number?(ann_term) == false
      prompt(MESSAGES['term_error'])
    else
      break
    end
  end

  if interest.to_f > 0.0
    result = monthly_pay(loan, interest, ann_term).round(2)
  else
    result = zero_interest(loan, ann_term).round(2)
  end

  prompt(MESSAGES['result'] + result.to_s)

  prompt(MESSAGES['continue'])

  response = gets.chomp

  if response.downcase != "y"
    break
  end
end

prompt(MESSAGES['goodbye'])
