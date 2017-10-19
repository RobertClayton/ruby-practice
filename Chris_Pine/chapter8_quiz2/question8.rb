# Write a program that:
# * Creates an array of 10 random integers that are `> 0` and `< 5`.
# * Prints all the numbers excepts the `3`s.
# * When the numbers are printed, they should be separated by `---`.
# * e.g.
#   1
#   ---
#   4
#   ---
#   1
#   ---
#   1
#   ---
#   4
#   ---
#   4
#   ---
#   2
#   ```
# * Note that there is no `---` below the 2.

array = []

10.times do
	array.push rand(4)+1
end

remove_three = []

array.each do |x|
	if x.to_i != 3
		remove_three.push x
	end
end

remove_three = remove_three.join("\n---\n")
puts remove_three

