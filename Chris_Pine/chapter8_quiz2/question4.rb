# Write a program that
# * Creates an array of ten random integers that are `>= 0` and `< 5`.
# * Prints out the string `Less than 2`.
# * Prints out all the random integers than are less than 2.
# * Prints out the string `More than 2`.
# * Prints out all the random integers than are more than 2.

array = []
10.times do 
	array.push rand(5)
end

print 'Less than 2'
array.each do |x|
	if x < 2
		print x
	end
end

print 'More than 2'
array.each do |x|
	if x > 2
		print x
	end
end