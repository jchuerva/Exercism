# frozen_string_literal: true

require 'pry'

class ArmstrongNumbers
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def include?
    num_char = @number.to_s.chars.reverse
    size_num = num_char.size
    amstron_num = num_char.each.sum { |value| (value.to_i**size_num) }
    amstron_num == @number
  end

  def self.include?(number)
    new(number).include?
  end
end

module Version
  VERSION = 1
end
