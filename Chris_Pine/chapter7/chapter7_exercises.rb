#chapter 7 exercises

puts 1 > 2
puts 1 < 2
puts
puts 5 >= 5
puts 5 <= 4
puts
puts 1 == 1
puts 2 != 1
puts
# works lexicographically also
puts 'cat' < 'dog'
puts
# but careful as capital and non-caps are valued differently (caps first)
puts 'bug lady' < 'Xander'
puts 'bug lady'.downcase < 'Xander'.downcase
puts
# think alphabetically
puts  2  <  10
puts '2' < '10'
puts

#---Branching---

# if
name = 'Chris'
if name == 'Chris'
	puts 'What a lovely name!'
end

name = 'Chewbacca'
if name == 'Chris'
	puts 'What a lovely name!'
end

# else
name = 'Chris'
if name == 'Chris'
	puts 'I see great things in your future.'
else
	puts 'I really have to go, sorry!' 
end

name = 'Chewbacca'
if name == 'Chris'
	puts 'I see great things in your future.'
else
	puts 'I really have to go, sorry!' 
end

#branching a branch
if name == name.capitalize
	puts "Please take a seat, #{name}."
else
	puts "#{name}? You mean #{name.capitalize}, right?"
	puts "Don't you even know how to spell your name?"
	reply = gets.chomp
	if reply.downcase == 'yes'
		puts 'Hmmph! Well, sit down!'
 	else
		puts 'GET OUT!' 
	end
end
# when writing this style of branch write the skeleton out first with #comments and then flesh out the if statements.

puts

#---Looping---

puts "Mimic says hello"
input = ''
while input != 'bye'
	puts input
	input = gets.chomp
end
puts 'Come again soon!'
puts
# 'break' exits a loop

puts "Mimic 2"
while true
	input_two = gets.chomp 
	puts input_two
	if input_two == 'bye'
		break 
	end
end
puts 'Come again soon!'
puts

# elsif
if name == 'Chris'
	puts 'What a lovely name!'
elsif name == 'Katy'
	puts 'What a lovely name!'
end
puts

#---Logic---

# Or ||
if name == 'Chris' || name == 'Katy' 
	puts 'What a lovely name!'
end
puts

# And &&
i_am_rob  = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false
puts i_am_rob  && i_like_beer
puts i_like_beer && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks
puts
puts i_am_rob  || i_like_beer
puts i_like_beer || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_rob
puts



