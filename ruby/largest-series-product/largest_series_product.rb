# frozen_string_literal: true

require 'pry'
class Series
  def initialize(number)
    @number = number
  end

  def largest_product(series)
    raise ArgumentError if series > @number.size
    raise ArgumentError if series < 0
    raise ArgumentError if @number.chars.any?(/[A-Za-z]/)

    return 1 if @number.empty? || (series == 0)

    numbers = @number.chars.map(&:to_i)
    find_max(numbers, series)
  end

  private

  def find_max(cadena, serie)
    mult = []
    cadena.each_cons(serie) do |slice|
      mult << slice.inject(:*)
    end
    mult.max
  end
end

module Version
  VERSION = 1
end
