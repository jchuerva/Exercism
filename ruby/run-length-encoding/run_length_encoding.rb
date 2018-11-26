# RunLenghtEncoding class comment
class RunLengthEncoding
  VERSION = 2
  def self.encode(input)
    suma = ''
    input.chars.chunk { |c| c }.each { |c, seq| suma += char_and_count(c, seq) }
    suma
  end

  def self.decode(input)
    input.scan(/(\d+)?(.)/).map { |len, c| c * (len || 1).to_i }.join
  end

  private_class_method def self.char_and_count(c, seq)
    seq.length == 1 ? c.to_s : "#{seq.length}#{c}"
  end
end
