class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    number_list.sum.abs2
  end

  def sum_of_squares
    number_list.collect { |i| i.abs2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def number_list
    1..@number
  end
end
