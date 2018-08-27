def solution(roman)
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
