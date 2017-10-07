#chapter 5 exercises

# this does not work - you cant add numbers and strings
#var1= 2
#var2 = '5'
#puts var1 + var2


#this does work - .to_s or to_i
var1= 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i
puts 
#more conversions:
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i #picks up the first thing it understands
puts 'Who asked you about 5 or whatever?'.to_i #started with letters so outputed 0
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts 
puts  20
puts  20.to_s
puts '20'
puts
#puts gets
puts
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'