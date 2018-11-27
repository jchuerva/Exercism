# RunLenghtEncoding class comment
class RunLengthEncoding
  VERSION = 3
  def self.encode(input)
    input.chars.chunk { |c| c }.map { |i| char_and_count(i[0],i[1]) }.sum('')
  end

  def self.decode(input)
    input.scan(/(\d+)?(.)/).map { |len, c| c * (len || 1).to_i }.join
  end

  private_class_method def self.char_and_count(c, seq)
    length = seq.length == 1 ? nil : seq.length
    "#{length}#{c}"
  end
end
