def battle(player1, player2)
  # Good luck!
  puts "player1   -> #{player1}"
  puts "player2   -> #{player2}"

  len1 = player1.length
  len2 = player2.length
  loop_len = len1 if len1 > len2
  loop_len = len2 if len2 > len1
  loop_len = len2 if len2 == len1
  puts "loop_len  -> #{loop_len}"

  suvivor = { :player1 => [], :player2 => [] }
  puts "suvivor   -> #{suvivor}"

  loop_len.times do |x|

    if player1[x] != nil && player2[x] != nil

      if player1[x][1] <= player2[x][0]
        puts "died -> #{player1[x]}"
      else
        suvivor[:player1] += [player1[x]]
      end

      if player2[x][1] <= player1[x][0]
        puts "died -> #{player2[x]}"
      else
        suvivor[:player2] += [player2[x]]
      end

    elsif len1 > len2
      suvivor[:player1] += [player1[x]]
    elsif len2 > len1
      suvivor[:player2] += [player2[x]]
    end



  end
  puts "return #{suvivor}"
  return suvivor
end
