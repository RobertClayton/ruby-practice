# Write a program that asks the user their name.  If the user's name is more than 5 characters long, the program should ask the user's age.  If the user's age is less than 5, the program should ask the user what their favourite sport is, then it should print `"[the sport the user entered] is cool!"`.

puts "Whats' your name?"
user_name = gets.chomp

if user_name.length > 5

	puts "What is your age?"
	age = gets.chomp

	if age.to_i < 5

		puts "What's your favourite sport?"
		sport = gets.chomp

		print "#{sport} is cool!"

	end
end