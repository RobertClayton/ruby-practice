# Write a program that
# * Creates an array of five random integers.
# * Prints out the last item in the array.
# * Adds another random number to the array.
# * Removes the last element in the array.
# * Prints out the number of items in the array.
# * Reverses the order of the elements in the array.
# * Uses the `+` operator on the array.
# * Makes the array repeat three times (e.g. `[1, 2]` becomes [1, 2, 1, 2, 1, 2]

array = []
5.times do 
	array.push rand(100)
end

print array.last

array.push rand(100)

array.pop

print array.length

# I didn't know if you wanted the results to be perminant, so I made the last 3 points perminant
array.reverse!

array = array + array

array = array * 3