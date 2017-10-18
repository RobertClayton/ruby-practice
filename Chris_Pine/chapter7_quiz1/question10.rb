# Write a program that uses the `!` operator.


#this program only lets the user leave if they don't want to.
puts "Do you want to leave? (y/n)"
answer = gets.chomp

until answer != "y"
	puts "Y! No your not allowed to leave"

	puts "Do you want to leave? (y/n)"
	answer = gets.chomp
end

puts "Fine leave!"

# Feedback: Hahaha.  A fun idea :)