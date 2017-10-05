#my age in seconds

my_years = 26.0
my_days = 6.0

seconds_in_minuite = 60.0
minuites_in_hour = 60.0
daily_hours = 24.0
days_in_year = 365.25

me_in_seconds = ((((my_years * days_in_year) * daily_hours) * minuites_in_hour) * seconds_in_minuite) + (((my_days * daily_hours) * minuites_in_hour) * seconds_in_minuite)

puts me_in_seconds