# Pangram module comment
module Pangram
  LETTERS = 'abcdefghijklmnopqrstuvwxyz'.freeze

  def self.pangram?(sentence)
    paragram = false
    paragram = true unless LETTERS.chars.map { |l| sentence.downcase.count(l) }.include?(0)
    paragram
  end
end