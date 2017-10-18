# Write a program that asks the user how many times they want the computer to jump.  If the user types `1`, the program should print `"jump"`.  If the user types `2`, the program should print `"jump"` twice, each time on a separate line.  If the user types any other number, the program should print `"I'm tired"`.


puts "How many times do you want the computer to jump?"
answer = gets.chomp.to_i

if answer == 1
	print "jump"
elsif answer == 2
	2.times { print "jump"; puts }
else
	print "I'm tired"
end
