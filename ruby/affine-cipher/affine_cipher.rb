# Affine class comment
class Affine
  VERSION = 1
  M = 26
  attr_reader :a, :b, :mmi

  def initialize(a, b)
    @a = a
    @b = b
    @mmi = (0..M).find { |i| (@a * i) % M == 1 }

    raise ArgumentError if a_is_coprime_to_m
  end

  def encode(text)
    word = cleanup(text)
    translate_word = word.map { |l| affine_code(l) }
    make_chunks_of_5(translate_word)
  end

  def decode(text)
    # binding.pry
    word = cleanup(text)
    word.map { |l| affine_decode(l) }.join('')
  end

  private
  M_PRIMES = (1..M).select { |n| (M % n).zero? }
  ALFABET = ('a'..'z').to_a

  def affine_code(letter)
    return letter if letter =~ /[0-9]/

    calc = a * ALFABET.index(letter) + b
    ALFABET[calc % M]
  end

  def affine_decode(letter)
    return letter if letter =~ /[0-9]/

    calc = mmi * (ALFABET.index(letter) - b)
    ALFABET[calc % M]
  end

  def cleanup(text)
    text.downcase.delete('^a-z0-9').chars
  end

  def make_chunks_of_5(value)
    value.each_slice(5).map(&:join).join(' ')
  end

  def a_is_coprime_to_m
    ((1..a).select{ |n| (a % n).zero? } & M_PRIMES).length > 1
  end
end
