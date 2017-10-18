# Write a program that lets a user do a sum of all the numbers the user enters.  The program should say "Give me a number". The user then enters a number.  The program should say, "Give me a number".  The user enters another number.  This should go on until the user types "stop" instead of a number.  When that happens, the program should print out the total of all the numbers the user entered added together.

puts "Give me a number"
number = gets.chomp
total = 0

until number == "stop"

	total += number.to_i

	puts "Give me a number"
	number = gets.chomp

end

print total