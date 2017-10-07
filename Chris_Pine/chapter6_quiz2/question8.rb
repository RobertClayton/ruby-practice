# Write a program that:
# * Creates a random number using the code `rand(100)`.
# * Asks the user to guess what number the program is thinking of.
# * Tells the user if they guessed correctly.
# * The computer should always pick the same number.


srand 1234
number = rand(100)
puts "What number is the computer thinking of?"
answer = gets.chomp
result = "wrong"
result = "correct" if answer.to_i == number
puts "You guess was #{result}!"
puts number
