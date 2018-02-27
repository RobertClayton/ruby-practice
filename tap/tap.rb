# The primary purpose of this method is to “tap into” a method chain,
# in order to perform operations on intermediate results within the chain.

(1..10)                     .tap {|x| puts "original: #{x.inspect}"}
(1..10).to_a                .tap {|x| puts "array: #{x.inspect}"}
(1..10).select {|x| x%2==0} .tap {|x| puts "evens: #{x.inspect}"}
(1..10).map { |x| x*x }     .tap {|x| puts "squares: #{x.inspect}"}
