class NextBiggest
  def next_bigger(n)
    # array = n.to_s.split('')
    # array = array.permutation(array.length).to_a.map(&:join).uniq.sort
    # array[array.index(n.to_s) + 1].to_i

    max_n = n.to_s.chars.sort.reverse
    return -1 if max_n == n.to_s.chars
    (n..max_n.join.to_i).each { |num| return num if num > n && num.to_s.chars.sort.reverse == max_n }
  end
end
