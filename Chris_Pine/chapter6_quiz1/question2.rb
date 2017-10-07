# What object owns the `puts` method?
# What types of object have the `+` method?

# I'm not sure what you mean by own? from the PDF, puts would be 'in' an object.
# or perhaps the answers is 'main'? as calling 'puts self' returns main. 
# but I don't know who own puts? surely whatever program puts is defined in, so Ruby owns puts?
# or as a third option what ever follows puts, e.g.: puts "hi". As "hi" is calling the puts method?

# once again i'm sorry but I dont understand this question
# surely whatever object calls the + method, has the + method. - This may sometimes call an error, but i'm not sure what you mean.

# Feedback: Good answer on `+`.
# And you're on the right lines for `puts`, but not quite there yet.  
# Have a think about the fact that when you call 
# `upcase`, you call it *on* a string: `"hi".upcase`.
# But when you call `puts` you're not calling it on any object:
# `[nothing-here.]puts "woo"`.  If all methods are owned by objects, what object owns `puts`?
# Also, if the answer doesn't appear to be in the PDF, or you don't understand the PDF, try Googling
# to find a resource that helps you understand.

#----UPDATE----
# puts is a method owned by The Kernel module
# which is a mixin to Object
# and therefore the Kernel's methods are globally accessible