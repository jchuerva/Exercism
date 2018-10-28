# TriangleTest class comment
class Triangle
  VERSION = 1
  
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    valid? && num_uniq == 1
  end

  def isosceles?
    valid? && num_uniq <= 2
  end

  def scalene?
    valid? && num_uniq == 3
  end

  private
  attr_reader :sides

  def valid?
    @valid ||= sides.none?(&:zero?) && (sides.sum - sides.max) >= sides.max
  end

  def num_uniq
    @num_uniq ||= sides.uniq.count
  end
end