# frozen_string_literal: true

class IsbnVerifier
  class << self
    def valid?(number)
      clean_num = number.gsub(/[^0-9X]/, '')

      return false unless clean_num.match?(/^[0-9]{9}[0-9X]$/)

      clean_num.chars.reverse.each.with_index(1).map do |item, index|
        item = 10 if item == 'X'
        item.to_i * index
      end.sum % 11 == 0
    end
  end
end

module Version
  VERSION = 1
end
