class NextBiggest
  def next_bigger(n)
    max_n = n.to_s.chars.sort.reverse
    return -1 if max_n == n.to_s.chars
    (n..max_n.join.to_i).each { |num| return num if num > n && num.to_s.chars.sort.reverse == max_n }
  end
end
