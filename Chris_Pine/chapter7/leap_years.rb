# Leap years. Write a program that asks for a starting year and an ending year and then puts all the leap years between them (and including them, if they are also leap years). 
#Leap years are years divisible by 4 (like 1984 and 2004). 
#However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are also divisible by 400 (such as 1600 and 2000, which were in fact leap years). What a mess!

puts "Starting year:"
starting = gets.chomp.to_i
puts "Ending year:"
ending = gets.chomp.to_i

puts "Leap years are:"


while starting != (ending + 1)
	if starting % 400 == 0 && starting % 100 == 0
		puts starting
	elsif starting % 100 == 0
		# not leap year
	elsif starting % 4 == 0
		puts starting
	end
	starting += 1
end