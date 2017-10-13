#7kyu credit_card_mask
#Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

#Your task is to write a function maskify, which changes all but the last four characters into '#'.



def maskify(cc)
  # your beautiful code goes here
  
  text_length = cc.length
  
  new_text = ""
  last_four = cc.strip
  
  
  if text_length > 4
    loop_times = text_length-4
    loop_times.times do 
      new_text.insert(0, "#") 
      last_four.slice!(0)
    end
  elsif text_length > 0 && text_length <= 4
    last_four = cc
  else  
    return ""
  end
  
  
  
  final = "#{new_text}#{last_four}"
  
  return final
  
end