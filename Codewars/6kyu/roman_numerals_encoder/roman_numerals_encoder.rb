def solution(num)
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
