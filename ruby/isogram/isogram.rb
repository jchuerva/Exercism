# Isogram module comment
module Isogram
  LETTERS = 'abcdefghijklmnopqrstuvwxyz'.freeze

  def self.isogram?(input)
    LETTERS.chars.map { |l| input.downcase.count(l) }.uniq.size <= 2
  end
end
