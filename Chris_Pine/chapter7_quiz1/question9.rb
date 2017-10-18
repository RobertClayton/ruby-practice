# Write a program that asks the user, "What is the first password?".  The user types in the first password.  The program should then ask the user, "What is the second password?" The user types in their second password.  If both passwords are "lion", the program should print "roar".  If either password is "dog", the program should print "woof".  Otherwise, the program should print "shhhh".


puts "What is the first password?"
pass_one = gets.chomp
puts "What is the second password?"
pass_two = gets.chomp

if pass_one == "lion" && pass_two == "lion"
	print "roar"
elsif pass_one == "dog" || pass_two == "dog"
	print "woof"
else
	print "shhhh"
end
		