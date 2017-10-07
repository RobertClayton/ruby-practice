# Table of contents. Here’s something for you to do in order to play around more with center, ljust, and rjust: write a program that will display a table of contents so that it looks like this:

#Chapter 1:  Getting Started		page  1
#Chapter 2:  Numbers				page  9
#Chapter 3:  Letters				page 13

line_width = 30
puts
print "Chapter 1:  Getting Started".ljust(line_width)
puts "page  1".rjust(line_width)
print "Chapter 2:  Numbers".ljust(line_width)
puts "page  9".rjust(line_width)
print "Chapter 3:  Letters".ljust(line_width)
puts "page 13".rjust(line_width)
puts