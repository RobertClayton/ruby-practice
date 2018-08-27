def find_it(seq)
  seq_count = Hash.new(0)
  seq.each { |x| seq_count.store(x, seq_count[x]+1) }
  seq_count.each { |a,b| return a if b % 2 != 0 }
end
