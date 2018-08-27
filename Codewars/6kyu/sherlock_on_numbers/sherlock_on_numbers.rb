def find_suspect(*numbers)

	counting = Hash.new(0)
	numbers.each { |v| counting.store(v, counting[v]+1) }

	c_string = ""
	counting.each { |k, v| c_string += "#{v}" }

	c_array = c_string.each_char.map(&:to_i)
	c_array.sort!

	if c_array[0] == c_array[1]
		return nil
	else
		counting.each do |k, v|
			if v == c_array[0]
				return k
			end
		end
	end

	return nil
end
