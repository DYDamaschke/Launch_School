def time_of_day(boolean)
  boolean ? puts("It's daytime!") : puts("It's Nighttime!")
end

daylight = [true, false].sample
time_of_day(daylight)