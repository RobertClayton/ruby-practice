#8kyu cockroach

#The cockroach is one of the fastest insects.
#Write a function which takes its speed in km per hour
#and returns it in cm per second, rounded down to the integer.

def cockroach_speed(s)
  answer = s*100000/60/60
  return answer.floor
end
