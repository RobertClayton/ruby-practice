# Write a program that:
# * Creates an array of 10 random numbers.
# * Sorts the array from lowest number to highest number.
# * Prints the numbers, one per line, separated by `!!!`.
# * e.g.:
#   ```
#   2
#   !!!
#   7
#   !!!
#   7
#   !!!
#   15
#   !!!
#   20
#   !!!
#   25
#   !!!
#   70
#   !!!
#   90
#   !!!
#   110
#   !!!
#   140
#   ```
# * Note that there is no `!!!` below the 9.



#array = []

#10.times do
#	array.push rand(100)
#end

#last = array.sort.last

#array.sort.each do |x|
#	if x == last
#		puts x
#	else
#		puts x
#		puts '!!!'
#	end
#end

# Feedback: I'm afraid this doesn't quite work.  If the last number appears somewhere else in the array
# of random numbers, a `!!!` will be missed out.  Try running the program a few times until this
# bug happens.  You can use `join` to make the printing code much easier and avoid this bug.


#----2nd go---
#array = []

#10.times do
#	array.push rand(100)
#end

#sorted = array.sort.join(" !!! ")

#puts sorted

#array = sorted.split(" ")

#array.each do |x|
#	puts x
#end





array = []

10.times do
	array.push rand(100)
end
sorted = array.sort.join("\n!!! \n")
puts sorted
