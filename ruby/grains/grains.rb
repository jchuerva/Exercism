module Grains
  TOTAL_SQUARES = 64

  def self.square(square)
    raise ArgumentError unless square.between?(1, TOTAL_SQUARES)

    2**(square - 1)
  end

  def self.total
    (2**TOTAL_SQUARES) - 1
  end
end
