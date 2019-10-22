# frozen_string_literal: true

module RotationalCipher
  LOWER = ('a'..'z').to_a
  UPPER = ('A'..'Z').to_a

  def self.rotate(text, number)
    text.tr((UPPER + LOWER).join, (UPPER.rotate(number) + LOWER.rotate(number)).join)
  end
end

module Version
  VERSION = 1
end
