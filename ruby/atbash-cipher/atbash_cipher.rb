# frozen_string_literal: true

require 'pry'

class Atbash
  ABC = ('a'..'z').to_a.join

  class << self
    def encode(input)
      clean_input = input.downcase.delete('^a-z0-9')
      clean_input.tr(ABC, ABC.reverse).chars.each_slice(5).map(&:join).join(' ')
    end

    def decode(input)
      clean_input = input.delete(' ')
      # clean_input = input.gsub(' ','')
      clean_input.tr(ABC.reverse, ABC)
    end
  end
end

module Version
  VERSION = 2
end
