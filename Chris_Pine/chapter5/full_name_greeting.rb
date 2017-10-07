# Full name greeting. Write a program that asks for a person’s first name, then middle, and then last. Finally, it should greet the person using their full name.

puts "What is your first name?"
first_name = gets.chomp
puts "what is your middle name?"
middle_name = gets.chomp
puts "what is your last name?"
last_name = gets.chomp

puts "Hello #{first_name} #{middle_name} #{last_name}!"