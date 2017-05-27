def century_check(year)
  year % 10 == 0
end

def century_builder(year)
  if century_check(year)
    new_year = year / 100
  else
    new_year = (year / 100) + 1
  end

  new_year
end

def century(year)
  century_number = century_builder(year)
  remainder = century_number % 10

  case remainder
  when 1
    return century_number.to_s + "st century"
  when 2
    return century_number.to_s + "nd century"
  when 3
    return century_number.to_s + "rd century"
  else
    return century_number.to_s + "th century"
  end

end

p century(2000)
p century(2001)
p century(1798)
p century(300)
p century(200)
p century(1100)
p century(1200)
p century(1300)


