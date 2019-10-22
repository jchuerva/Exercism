# frozen_string_literal: true

require 'pry'

class Cipher
  attr_reader :key

  ALPHABET = ('a'..'z').to_a
  A = 'a'.ord

  def initialize(key = nil)
    @key = key || generate_key

    raise ArgumentError unless valid?(@key)
  end

  def encode(text)
    text.chars.map.with_index do |char, index|
      ALPHABET.rotate(@key[index].ord - A)[char.ord - A]
    end.join
  end

  def decode(text)
    text.chars.map.with_index do |char, index|
      ALPHABET.rotate(A - @key[index].ord)[char.ord - A]
    end.join
  end

  private

  def valid?(key)
    /\A[a-z]+\z/ =~ key
  end

  def generate_key
    100.times.map { ALPHABET.sample }.join
  end
end

module Version
  VERSION = 1
end
