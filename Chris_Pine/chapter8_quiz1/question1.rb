# Write a program that:
# * Creates an empty array.
# * Adds three strings to the array: `"banana"`, `"peach"` and `"cherry"`.
# * Creates a second empty array.
# * Adds two integers to the second array: `1`, `2`.
# * Adds the second array to the first array.  (Not the items in the second array.  The whole second array.)

array = []
array.push "banana"
array.push "peach"
array.push "cherry"
second_array = []
second_array.push 1
second_array.push 2
array.push second_array
