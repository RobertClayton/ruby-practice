#Table of contents, revisited. 
#Rewrite your table of contents program on page 32. 
#Start the program with an array holding all of the information for your table of contents (chapter names, page numbers, and so on). 
#Then print out the information from the array in a beautifully formatted table of contents.


array = ["Chapter 1:  Getting Started", "page  1", "Chapter 2:  Numbers", "page  9", "Chapter 3:  Letters", "page 13"]

line_width = 30
puts
print array[0].ljust(line_width)
puts array[1].rjust(line_width)
print array[2].ljust(line_width)
puts array[3].rjust(line_width)
print array[4].ljust(line_width)
puts array[5].rjust(line_width)
puts


