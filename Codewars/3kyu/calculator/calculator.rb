class Calculator
  def evaluate(string)
    string = string.split(" ")
    def times_div(string)
      looper = 0
      string.each do
        looper += 1
        if string[looper] == "/" || string[looper] == "*"
          if string[looper] == "/"
            string[looper] = "#{string[looper-1].to_i/string[looper+1].to_i}"
            string[looper-1] = ""
            string[looper+1] = ""
            string.reject! { |x| x.empty? }
            return string if looper == string.length
            times_div(string)
          elsif string[looper] == "*"
            string[looper] = "#{string[looper-1].to_i*string[looper+1].to_i}"
            string[looper-1] = ""
            string[looper+1] = ""
            string.reject! { |x| x.empty? }
            return string if looper == string.length
            times_div(string)
          end
        end
      end
      string
    end
    def plus_minus(string)
      looper = 0
      string.each do
        looper += 1
        if string[looper] == "+" || string[looper] == "-"
          if string[looper] == "+"
            string[looper] = "#{string[looper-1].to_i+string[looper+1].to_i}"
            string[looper-1] = ""
            string[looper+1] = ""
            string.reject! { |x| x.empty? }
            return string if looper == string.length
            plus_minus(string)
          end
          if string[looper] == "-"
            string[looper] = "#{string[looper-1].to_i-string[looper+1].to_i}"
            string[looper-1] = ""
            string[looper+1] = ""
            string.reject! { |x| x.empty? }
            return string if looper == string.length
            plus_minus(string)
          end
        end
      end
      string
    end
    string = times_div(string)
    string = plus_minus(string)
    return string[0].to_i
  end
end
