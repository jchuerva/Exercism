# frozen_string_literal: true

require 'pry'

class InvalidCodonError < StandardError
end

module Translation
  CODON_PROTEIN = {
    AUG: 'Methionine',
    UUU: 'Phenylalanine',
    UUC: 'Phenylalanine',
    UUA: 'Leucine',
    UUG: 'Leucine',
    UCU: 'Serine',
    UCC: 'Serine',
    UCA: 'Serine',
    UCG: 'Serine',
    UAU: 'Tyrosine',
    UAC: 'Tyrosine',
    UGU: 'Cysteine',
    UGC: 'Cysteine',
    UGG: 'Tryptophan',
    UAA: 'STOP',
    UAG: 'STOP',
    UGA: 'STOP'
  }.freeze

  def self.of_rna(input)
    all_protein = []
    input.chars.each_slice(3) do |slice|
      protein = of_codon(slice.join('').to_sym)
      raise InvalidCodonError if protein.nil?

      all_protein << protein unless protein == 'STOP'
      break if protein == 'STOP'
    end
    all_protein.uniq
  end

  def self.of_codon(input)
    CODON_PROTEIN[input.to_sym]
  end
end

module Version
  VERSION = 1
end
