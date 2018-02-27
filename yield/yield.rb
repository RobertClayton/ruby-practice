def find_sum(starting_value, array)
  total = starting_value
  array.each do |x|
    total = yield(total, x)
  end
  total
end

def total_sum(range)
  find_sum(0, range) do |total, x|
    total + x
  end
end

sum = total_sum(1..100)
p sum
