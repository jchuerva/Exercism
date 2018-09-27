# SumOfMultples comment
class SumOfMultiples
  def initialize(*args)
    @div = args
  end

  def to(num)
    numbers(num).to_a.select { |item| mult(item) }.sum
  end

  private

  def mult(number)
    @div.map { |divisor| (number % divisor).zero? }.any?
  end

  def numbers(num)
    1..num - 1
  end
end
