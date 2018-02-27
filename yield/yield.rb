def insurt_between_each(starting_value, array)
  total = starting_value
  array.each do |x|
    total = yield(total, x)
  end
  total
end

def total_sum(range)
  insurt_between_each(0, range) do |total, x|
    total + x
  end
end

sum = total_sum(1..100)
print 'total sum: '
puts sum

def total_product(range)
  insurt_between_each(1, range) do |total, x|
    total * x
  end
end

product = total_product(1..10)
print 'total product: '
puts product


def join(seporator, range)
  insurt_between_each('', range) do |total, x|
    total + seporator + x
  end[1..-1]
end

az = join(' ', 'a'..'z')
print 'alphabet: '
puts az

class Array
  def new_each
    results = []
    0.upto(self.length - 1) do |i|
      results << yield(self[i])
    end
    results
  end
end

p ['a','g','l'].new_each { |x| x + x }
# This will double each item in the array ('aa', 'gg', 'll')
p [1, 2, 3].new_each { |x| x + x }
# ('2', '4', '6')
p [1, 2, 3].new_each { |x| x * 4 }
# ('4', '8', '12')
