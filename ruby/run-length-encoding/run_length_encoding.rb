# RunLenghtEncoding class comment
class RunLengthEncoding
  VERSION = 1
  def self.encode(input)
    input.chars.chunk { |c| c }.map { |c, seq| seq.length == 1 ? "#{c}" : "#{seq.length}#{c}" }.join
  end

  def self.decode(input)
    input.scan(/(\d+)?(.)/).map { |len, c| len.nil? ? c : c * len.to_i }.join
  end
end