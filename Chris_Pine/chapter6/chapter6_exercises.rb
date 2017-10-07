#chapter 6 exercises

#method quiz
# gets 	chomp 	puts 	print 	.to_s 	.to_i 	.to_f 	+ 	- 	/ 	* 
#answers:
# puts	gets	chomp	to_i	to_f	to_s	+	-	*	/
# all correct but I also had print

puts('hello '.+ 'world')
puts((10.* 9).+ 9)
# this shows that +-*/ are methods however we dont need to write them like that
puts

#will show you what program your in:
puts self
puts

#reverse
var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP  A magic spell?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts
puts var1
puts var2
puts var3
puts

#length
puts 'What is your full name?'
name = gets.chomp
# added .to_s to length
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'
puts

#upcase downcase capitalize swapcase
letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts

#center - this will center the text within the paramiters given (50 here)
line_width = 50
puts(                'Old Mother Hubbard'.center(line_width))
puts(               'Sat in her cupboard'.center(line_width))
puts(        'Eating her curds and whey,'.center(line_width))
puts(          'When along came a spider'.center(line_width))
puts(           'Who sat down beside her'.center(line_width))
puts('And scared her poor shoe dog away.'.center(line_width))
puts
#ljust rjust - left justify and right justify
line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))
puts

#Maths
# ** and % - exponentiation and modulus - (power of and remainder after division)
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts 365.25%7
puts
# abs - absolute value of number
puts (5-2).abs
puts (2-5).abs
puts (10-2).abs
puts (2-20).abs
puts
#rand - random number generator - comes as a float
#rand will return between 0-1 decimel
#rand(5) will return between 0-4
#rand(1) will return between 0-0
puts rand
puts(rand(100))
puts(rand(1))
puts(rand(9999999999999999999999999999999999999))
puts('The weatherman said there is a')
puts(rand(101).to_s + '% chance of rain,')
puts
# srand - seed random - lets you save random numbers
# it will run the same random numbers everytime you call the seed
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts 
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts
#call srand will no seed to reset
srand 
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
#Math object - inbuilt calculator functions
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)









