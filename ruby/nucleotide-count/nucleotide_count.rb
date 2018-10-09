# # Nucleitude class comment
# class Nucleotide
#   def initialize(word)
#     @word = word
#   end

#   def self.from_dna(word)
#     raise ArgumentError if word =~ /[^GTAC]/

#     Nucleotide.new(word)
#   end

#   def count(letter)
#     @word.count(letter)
#   end

#   def histogram
#     'ATCG'.chars.zip('ATCG'.chars.map { |l| @word.count(l) }).to_h
#   end
# end

# Nucleotide module comment
module Nucleotide
  def self.from_dna(word)
    raise ArgumentError if word =~ /[^GTAC]/

    word
  end

  def histogram
    'ATCG'.chars.zip('ATCG'.chars.map { |l| count(l) }).to_h
  end
end

String.class_eval { include Nucleotide }
