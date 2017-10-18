# Deaf grandma extended. What if Grandma doesn’t want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times but not in a row, you should still be talking to Grandma.

puts "Speak to your Grandma"
answer = gets.chomp
bye_count = 0

while true
	if answer != answer.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		bye_count = 0
	elsif answer == "BYE"
		bye_count += 1
		if bye_count == 3
			puts "GOOD BYE THEN!!"
			break
		end
		puts "I DON'T UNDERSTAND!"
	else
		puts "NO, NOT SINCE 19#{rand(21)+30}!"
		bye_count = 0
	end
	answer = gets.chomp
end