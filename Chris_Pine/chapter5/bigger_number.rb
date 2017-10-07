# Bigger, better favorite number. Write a program that asks for a person’s favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.) 

puts "What is your favourite number?"
number = gets.chomp
puts "I think you should aim a little higher, how about a bigger a better number. Maybe #{number.to_i + 1}?"
