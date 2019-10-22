def is_year_a_leap_year(year)
  if year % 400 == 0
    "#{year} IS a leap year"
  else
    "#{year} is NOT a leap year"
  end
end
