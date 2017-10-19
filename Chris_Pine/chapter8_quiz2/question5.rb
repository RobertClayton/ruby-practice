# Write a program that:
# * Creates an array of ten random numbers.
# * Changes every number in the array to `10`.

array = []
10.times do 
	array.push rand(50)
end

counter = 0

array.each do
	array[counter] = 10
	counter += 1
end
