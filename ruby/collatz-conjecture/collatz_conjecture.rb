# frozen_string_literal: true

require 'pry'

class CollatzConjecture
  class << self
    def steps(number)
      raise ArgumentError unless valid_number?(number)
      return 0 if number == 1

      count_steps(number)
    end

    private

    def valid_number?(number)
      number.positive?
    end

    def count_steps(number)
      steps = 0
      while number != 1
        steps += 1
        if number.even?
          number /= 2
        else
          number = (3 * number) + 1
        end
      end
      steps
    end
  end
end

module Version
  VERSION = 1
end
