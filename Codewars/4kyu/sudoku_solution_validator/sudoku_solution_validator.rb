def validSolution(board)
	temp_col = []
	collumns = []
	9.times do |c|
		board.each { |y| temp_col << y[c] }
		collumns << temp_col
		temp_col = []
	end
	collumns.each { |a| return false if a.to_s.count("1-9") != 9 || a.uniq.length != 9 }
	board.each { |a| return false if a.to_s.count("1-9") != 9 || a.uniq.length != 9 }
	temp_block_one = []
	temp_block_two = []
	temp_block_three = []
	temp_block_four = []
	temp_block_five = []
	temp_block_six = []
	temp_block_seven = []
	temp_block_eight = []
	temp_block_nine = []
	blocks = []
	block_loop = 0
	board.each do |d|
		block_loop += 1
		if block_loop >= 1 && block_loop <=3
			10.times do |x|
				if x >= 1 && x <= 3
					temp_block_one << d[x-1]
				elsif x >= 4 && x <= 6
					temp_block_two << d[(x-1)]
				elsif x >= 7
					temp_block_three << d[x-1]
				end
			end
		elsif block_loop >= 4 && block_loop <= 6
			10.times do |x|
				if x >= 1 && x <= 3
					temp_block_four << d[x-1]
				elsif x >= 4 && x <= 6
					temp_block_five << d[(x-1)]
				elsif x >= 7
					temp_block_six << d[x-1]
				end
			end
		elsif block_loop >= 7
			10.times do |x|
				if x >= 1 && x <= 3
					temp_block_seven << d[x-1]
				elsif x >= 4 && x <= 6
					temp_block_eight << d[(x-1)]
				elsif x >= 7
					temp_block_nine << d[x-1]
				end
			end
		end
	end
	blocks << temp_block_one
	blocks << temp_block_two
	blocks << temp_block_three
	blocks << temp_block_four
	blocks << temp_block_five
	blocks << temp_block_six
	blocks << temp_block_seven
	blocks << temp_block_eight
	blocks << temp_block_nine
	blocks.each { |a| return false if a.to_s.count("1-9") != 9 || a.uniq.length != 9 }
	return true
end
