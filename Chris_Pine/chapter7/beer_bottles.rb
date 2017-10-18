#“99 Bottles of Beer on the Wall.” Write a program that prints out the lyrics to that beloved classic, “99 Bottles of Beer on the Wall.”

number = 99

while number != 0
	if number != 1
		puts "#{number} Bottles of Beer on the Wall. Take one down only #{number - 1} Bottles left."
	else
		puts "#{number} Bottles of Beer on the Wall. Take one down. No more bottle of beer left."
	end
	number -= 1
end