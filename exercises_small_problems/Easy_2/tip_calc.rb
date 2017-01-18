def tip_amount(total, tip_perc)
  total = total * (tip_perc / 100).round(2)
  sprintf("%.2f", total).to_f
end

def bill_total(total, tip_perc)
  total += tip_amount(total, tip_perc).round(2)
  sprintf("%.2f", total)
end

puts "Please enter the amount of the bill: "
bill = gets.to_f

puts "Please enter you desired tip percentage (i.e. 5, 15, 25)"
tip = gets.to_f

puts "You're tip is: $#{tip_amount(bill, tip)}"
puts "The total bill is: $#{bill_total(bill, tip)}"