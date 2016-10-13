
months = {
  'January' => 31,
  'February' => 28,
  'March' => 31,
  'April' => 30,
  'May' => 31,
  'June' => 30,
  'July' => 31,
  'August' => 31,
  'September' => 30,
  'October' => 31,
  'November' => 30,
  'December' => 31,
}

# Given number of days since Jan 1, 1900, tell me if it's sunday
def is_sunday?(days_since_1900)
  # Monday was 1st, so Sunday is when 7 divides evenly into number of days
  # since the known Monday
  (days_since_1900 % 7 == 0)
end

# Given number of days into the year, tell me if it's the first of a month
def is_first?(months, days, leap = false)
  months.each do |name, days_in_month|
    days_in_month += 1 if leap && name == 'February'
    return true if days == 1
    days -= days_in_month
  end
  false
end

sunday_ct = 0
nth_day = 365

(1901..2000).each do |year|
  leap = year % 4 == 0
  number_of_days = leap ? 366 : 365
  number_of_days.times do |days_into_year|
    nth_day += 1
    is_first = is_first?(months, days_into_year, leap)
    is_sunday = is_sunday?(nth_day)
    sunday_ct += 1 if is_first && is_sunday
  end
end

p sunday_ct
