# RunLenghtEncoding class comment
class RunLengthEncoding
  VERSION = 4
  def self.encode(input)
    input.chars.chunk { |c| c }.sum("") { |i| char_and_count(i[0], i[1]) }
  end

  def self.decode(input)
    input.scan(/(\d+)?(.)/).sum("") { |len, c| c * (len || 1).to_i }
  end

  private_class_method def self.char_and_count(c, seq)
    length = seq.length == 1 ? nil : seq.length
    "#{length}#{c}"
  end
end
