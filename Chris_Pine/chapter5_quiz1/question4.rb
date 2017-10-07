# Write a program that asks the user to type in their age.  The program should then print out how long the user has been an adult.  (Assume that people become adults when they are 18.)

puts "What is your age?"
answer = gets.chomp
puts "You have been an adult for #{answer.to_i - 18} years."