# Write a program that:
# * Creates an array with three strings in it.
# * Creates a second array with two strings in it.
# * Creates a third array with one string in it.
# * Adds the second array to the first array as a sub-array.
# * Adds the third array to the second array as a sub-array.
# * The final array should look something like this: ["a", "b", "c", ["d", "e", ["f"]]]


array = ["a", "b", "c"]
array_two = ["d", "e"]
array_three = ["f"]

array.push array_two

array_two.push array_three
