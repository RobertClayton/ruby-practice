# 7kyu exes_ohs

# Check to see if a string has the same amount of 'x's and 'o's.
# The method must return a boolean and be case insensitive.
# The string can contains any char.



def XO(str)
	return true if (str.downcase.count "x") == (str.downcase.count "o")
	false
end
