def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(10)

p factors(-1)

p factors(0)

# number % dividend shows the remainder after division, if zero, the divisor is a factor.
# 'divisors' is called at the end because methods return the last -
# evaluation, so without it the method would return nil.