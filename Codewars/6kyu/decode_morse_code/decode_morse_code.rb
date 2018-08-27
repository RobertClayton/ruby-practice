def decodeMorse(morseCode)

  morseCode.strip!

  words = morseCode.split("   ")
  letters = []
  words.each { |x| letters.push(x.split(" ")) }
  output = ""
  letters.each do |x|
  	x.each do |y|
    	output << "#{MORSE_CODE[y.to_s]}"
    end
  	output << " "
  end
  return output.strip
end
