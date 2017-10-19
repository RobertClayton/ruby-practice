#Building and sorting an array. 
#Write the program we talked about at the beginning of this chapter, 
#one that asks us to type as many words as we want (one word per line, continuing until we just press Enter on an empty line) 
#and then repeats the words back to us in alphabetical order. 
#Make sure to test your program thoroughly; for example, does hitting
#Enter on an empty line always exit your program? 
#Even on the first line? And the second? 
#Hint: There’s a lovely array method that will give you a sorted version of an array: sort. Use it!

puts "Enter a word"
answer = gets.chomp
array = []
until answer == ""
	array.push answer
	puts "Enter a word"
	answer = gets.chomp
end
puts "Your sorted array :  #{array.sort.join(", ")}"