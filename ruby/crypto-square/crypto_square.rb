require 'pry'

class Crypto
  attr_accessor :plaintext

  def initialize(plaintext)
    @plaintext = plaintext.downcase.delete('^a-z0-9')
  end

  def ciphertext
    length = @plaintext.length
    return '' if length.zero?

    cols = (length ** 0.5 ).ceil
    rows = length.quo(cols).ceil
    adjust = cols * rows - length
    text = @plaintext.ljust(length + adjust, ' ')
    text.chars.each_slice(cols).to_a.transpose.map(&:join).join(' ')
  end
end
