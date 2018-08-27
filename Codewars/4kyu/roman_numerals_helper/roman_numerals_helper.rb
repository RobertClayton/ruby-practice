class RomanNumerals
  class << self

    def from_roman(roman)
      @roman_value = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
      length = roman.length
      roman = roman.upcase.split("")
      roman_array = []
      temp_string = ""
      last = false
      length.times do |counter|
        temp_one = @roman_value[roman[counter]]
        if counter == length -1
          last = true
          temp_two = 0
        else
          temp_two = @roman_value[roman[counter+1]]
        end
        if temp_one < temp_two
          temp_string += roman[counter]
        elsif temp_one == temp_two
          temp_string += roman[counter]
          roman_array << temp_string if last == true
        else
          temp_string += roman[counter]
          roman_array << temp_string
          temp_string = ""
        end
      end
      num_array = []
      temp_array = []
      roman_array.each do |x|
        x = x.split("")
        x.each do |y|
          temp_array += ["#{@roman_value[y]}"]
        end
        a = 0
        b = 0
        previous = 0
        counter = 0
        temp_array.each do |z|
          if temp_array[counter+1] == nil
            if z == previous
              a += z.to_i
            else
              b = z.to_i
            end
          elsif  temp_array[counter] > temp_array[counter-1]
            b = z.to_i
          else
            a += z.to_i
          end
          counter +=1
          previous = z
        end
        if b == 0
          b = a
        else
          if a > b * 0.25
            return
          else
            b = b - a
          end
        end
        num_array << ([b])
        temp_array = []
      end
      total = 0
      num_array.each {|x| total += x[0].to_i}
      return total
    end




    def to_roman(num)
      num = "000#{num}" if num.to_s.length == 1
      num = "00#{num}" if num.to_s.length == 2
      num = "0#{num}" if num.to_s.length == 3
      temp_array = num.to_s.split("")
      array = []
      temp_array.each {|x| array.push x.to_i}
      final_array = ""
      final_array += "#{"M"*array[0].to_i}"
      if array[1].to_i > 8
        final_array += "#{"C"*(10-array[1].to_i)}"
        final_array += "M"
      elsif array[1].to_i >= 5
        final_array += "D"
        final_array += "#{"C"*(array[1].to_i-5)}"
      elsif array[1] == 4
        final_array += "C"
        final_array += "D"
      else
        m = array[1]
        final_array += "#{"C"*array[1].to_i}"
      end
      if array[2].to_i > 8
        final_array += "#{"X"*(10-array[2].to_i)}"
        final_array += "C"
      elsif array[2].to_i >= 5
        final_array += "L"
        final_array += "#{"X"*(array[2].to_i-5)}"
      elsif array[2] == 4
        final_array += "X"
        final_array += "L"
      else
        m = array[2]
        final_array += "#{"X"*array[2].to_i}"
      end
      if array[3].to_i > 8
        final_array += "#{"I"*(10-array[3].to_i)}"
        final_array += "X"
      elsif array[3].to_i >= 5
        final_array += "V"
        final_array += "#{"I"*(array[3].to_i-5)}"
      elsif array[3] == 4
        final_array += "I"
        final_array += "V"
      else
        m = array[3]
        final_array += "#{"I"*array[3].to_i}"
      end
      return final_array
    end
  end
end
