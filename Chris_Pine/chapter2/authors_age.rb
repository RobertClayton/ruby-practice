#authors age
#1,160,000,000 second old

author = 1160000000.0
seconds_in_minute = 60.0
minutes_in_hours = 60.0
hours_in_day = 24.0
days_in_year = 365.25

author_age = ((((author / seconds_in_minute) / minutes_in_hours) / hours_in_day) / days_in_year)

puts author_age