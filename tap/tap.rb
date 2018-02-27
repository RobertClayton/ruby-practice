# The primary purpose of this method is to “tap into” a method chain,
# in order to perform operations on intermediate results within the chain.

(1..10)                     .tap {|x| puts "original: #{x.inspect}"}
(1..10).to_a                .tap {|x| puts "array: #{x.inspect}"}
(1..10).select {|x| x%2==0} .tap {|x| puts "evens: #{x.inspect}"}
(1..10).map { |x| x*x }     .tap {|x| puts "squares: #{x.inspect}"}


#### Code Below is theoretical and will no run:



# TRADITIONAL
object = SomeClass.new
object.key = 'value'
object

# TAPPED
object_2 = SomeClass.new.tap do |obj|
  obj.key = 'value'
end

# CONDENSED
object_4 = SomeClass.new.tap { |obj| obj.key = 'value' }



# TRADITIONAL
object_4 = Model.new
object_4.save!
object_4

# TAPPED
object_5 = Model.new.tap do |model|
  model.save!
end

# CONDENSED
object_6 = Model.new.tap(&:save!)




# TRADITIONAL
arr = [1, 2, 3]
arr.reverse!
arr

# TAPPED CONDENSED
[1, 2, 3].tap(&:reverse!)
