# Write a program that shows how many milliseconds there are in a century. (Assume there are no leap years.)

milliseconds_in_seconds = 1000.0
seconds_in_minuite = 60.0
minuites_in_hour = 60.0
daily_hours = 24.0
days_in_year = 365.25
century = 100.0

milliseconds_in_decade = (((((milliseconds_in_seconds * seconds_in_minuite) * minuites_in_hour) * daily_hours) * days_in_year) * century)

puts milliseconds_in_decade

# Feedback: Good idea to name the values for clarity! 
# No need to make the values floats, since you're not divding.
# And no need to use any parentheses.  The normal order of operations will produce the correct results.
# Try to avoid using parentheses, unless you need to override the normal order of operations.