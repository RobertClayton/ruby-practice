class Position
  def listPosition(word)
    split_word = word.split('')
    letters = Hash.new(0)
    letters = (word).each_char.reduce(letters) { |h, c| h[c] += 1; h}
    @prefix = ""
    prefix_factors = []


    split_word.each_with_index do |current_letter, index|
      permutations = []
      prefix_letters_count = letters
      letters[current_letter] -= 1
      letters.delete(current_letter) if letters[current_letter] == 0

      letters.keys.sort.each do |l|
        break if l >= current_letter
        pre = "#{@prefix}#{l}"

        prefix_letters_count[l] -= 1
        prefix_letters_count[current_letter] += 1

        prefix_factors << [(word.length - pre.length), prefix_letters_count.values]

        prefix_letters_count[current_letter] -= 1
        prefix_letters_count[l] += 1
        prefix_letters_count.delete(current_letter) if prefix_letters_count[current_letter] == 0
      end
      @prefix += current_letter
    end


    factor_sum = 0

    prefix_factors.each do |prefix|
      prefix_one = factorial(prefix[0])
      prefix_two = 0

      prefix[1].each do |x|
        if prefix_two == 0
          prefix_two = factorial(x)
        else
          prefix_two *= factorial(x)
        end
      end
      factor_sum += prefix_one / prefix_two
    end

    factor_sum + 1
  end

  def factorial(n)
    (1..n).inject(1, :*)
  end
end
