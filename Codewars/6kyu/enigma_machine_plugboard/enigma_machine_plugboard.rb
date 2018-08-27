class Plugboard
  attr_accessor = :code

  def initialize(wires=nil)
   return if wires.nil?
    @code = {}
     if ((wires.length % 2 != 0) || (wires.length/2 > 10))
        raise "Uneven input/too many"
     end

   wires.chars.each_slice(2) do |pair|
    raise 'Cannot reuse keys' if (@code.keys.include? pair[0]) || (@code.keys.include? pair[1])
      if pair.length == 2 && @code.length < 21
        @code[pair[0]] =pair[1]
        @code[pair[1]] =pair[0]
      else
         @code[pair[0]] = pair[0]
      end
    end
 end

  def process(wire)
   @code[wire] || wire
   end
end
