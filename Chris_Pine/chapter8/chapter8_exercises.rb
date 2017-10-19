#chapter 8 exercises

#---Arrays---

# Array examples:
[]
[5]
['Hello', 'Goodbye']

flavor = 'vanilla'
[89.9, flavor, [true, false]]
puts

#accessing the values in arrays:
names = ['Ada', 'Belle', 'Chris']
puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts names[3]
puts
#nil means: not any other object. or nothing.

#(empty) slots in an array act like variables - so you can assign and re-assign them:
other_peeps = []
other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha' #re-assigned
puts other_peeps #other_peeps[2] = nil (because nothing was assigned to it)
puts


#---Iterators---

# .each - applies a block of code to each item in an object (an array here)
languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
	puts "I love #{lang}!" 
	puts "Don't you?"
end
puts

# = and parentheses are a fundamental part of the Ruby language. Kind of like punctuation.
# iterators - are methods that act like loops

# .times - It’s an integer method
3.times do
	puts 'Hip-Hip'
end
puts

# .join - joins the items in an array with the .to_s method. It breaks up the items with the argument passed to it in the ().
foods = ['artichoke', 'brioche', 'caramel']
puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'
puts
# when puts is called on an array. It puts each item individually in an array

# .push - adds an item on the end of an array
# .pop - removes the last item from an array
favorites = []
favorites.push 'roses'
favorites.push 'kittens'
puts favorites[0]
puts favorites.last
puts favorites.length
puts favorites.pop
puts favorites
puts favorites.length
puts
