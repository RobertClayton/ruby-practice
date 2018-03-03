class NextBiggest
  def next_bigger(n)
    array = n.to_s.split('')
    array = array.permutation(array.length).to_a.map(&:join).uniq.sort
    array[array.index(n.to_s) + 1].to_i
  end
end
