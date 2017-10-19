# Write a program that
# * Creates an array of 10 random numbers.
# * Uses the `each` method to print out every other number (the first number, the third number, the fifth number etc.)

array = []
10.times do 
	array.push rand(100)
end

counter = 1


array.each do |x|
	if (counter % 2) != 0
		print x
	end
	counter += 1
end




#the above isn't very aethetic, I would do the below:
=begin

new_array = []

array.each do |x|
	if (counter % 2) != 0
		new_array.push x
	end
	counter += 1
end

print new_array

=end


