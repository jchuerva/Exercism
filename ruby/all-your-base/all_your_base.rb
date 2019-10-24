# frozen_string_literal: true

require 'pry'
# require 'bases'

class BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError if input_base < 2
    raise ArgumentError if output_base < 2
    raise ArgumentError unless digits.all? { |d| d.between?(0, input_base - 1) }

    decimal_num = digits.reverse.map.with_index { |d, index| d * input_base**index }.sum
    return [0] if decimal_num.zero?

    output = []
    until decimal_num.zero?
      output << decimal_num % output_base
      decimal_num /= output_base
    end
    output.reverse
  end
end

module Version
  VERSION = 1
end
