module Hamming

  def self.compute(cad1, cad2)
    if cad1.length != cad2.length
      raise ArgumentError.new("Strands must be the same length")
    else
      cad1.chars.zip(cad2.chars).count { |a, b| a!=b }
    end
  end
end