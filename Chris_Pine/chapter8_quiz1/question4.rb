# Write a program that
# * Asks the user to type in a number.
# * Stores that number.
# * Keeps on asking the user to type in numbers until the user enters `stop`.
# * When the user enters `stop`, the program should print out all the stored numbers, each on a separate line.
# * The numbers less than or equal to 10 should be printed first.
# * The numbers greater than 10 should be printed second.
# * e.g.:
# ```
# Please type in a number
# 12
# Please type in a number
# 5
# Please type in a number
# 57
# Please type in a number
# 2
# Please type in a number
# stop
# 5
# 2
# 12
# 57
# ```


puts "Type in a number"
number = gets.chomp
low_array = []
high_array = []

until number == 'stop'
	if number.to_i <= 10
		low_array.push number
	else
		high_array.push number
	end
			
	puts "Type in a number"
	number = gets.chomp
end

puts low_array
puts high_array