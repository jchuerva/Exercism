# Palindromes class comment
class Palindromes
  attr_reader :largest, :smallest
  def initialize(max_factor:, min_factor: 1)
    @max = max_factor
    @min = min_factor
  end

  def generate
    pal = Hash.new { |h, k| h[k] = [] }
    [*@min..@max].repeated_combination(2) do |m, n|
      num = m * n
      pal[num].push([m, n]) if num.to_s == num.to_s.reverse
    end

    min_max = Struct.new(:value, :factors)

    large_value, large_factors = pal.max
    @largest = min_max.new(large_value, large_factors)

    small_value, small_factors = pal.min
    @smallest = min_max.new(small_value, small_factors)
  end
end
