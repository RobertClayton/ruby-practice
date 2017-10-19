# * Write a program that uses the following array methods:
#   * `last`
#   * `push`
#   * `pop`
#   * `length`
#   * `reverse`
#   * `+`
#   * `*`
# * For each method, say in a comment what the method returns.
# * For each method, say in a comment how the array it's called on is changed.


array = ["apple", "bannana"]

array.last 
# return: "bannana"  
# no change, unless saved to a variable

array.push "orange"
# no return 
# changed array to: ["apple", "bannana", "orange"]

array.pop
# return: "orange"
# changed array to: ["apple", "bannana"]

array.length
# return: 2 
# no change, unless saved to a variable

array.reverse
# return: "bannana", "apple"
# no change, unless saved to a variable

array + array
# return: "apple", "bannana", "apple", "bannana"
# no change, unless saved to a variable

array * 3
# return: "apple", "bannana", "apple", "bannana", "apple", "bannana"
# no change, unless saved to a variable
