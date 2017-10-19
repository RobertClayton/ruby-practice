# Write a program that uses the `times` method to print all the integers from 1 to 20.

counter = 1
20.times do
	print counter
	counter += 1
end

# Feedback: You can create a parameter to the do block to avoid needing to create and use the `counter` variable.
# e.g.
# 20.times do |i|
#   puts i + 1
# end
