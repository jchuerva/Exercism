# frozen_string_literal: true

require 'pry'

class ComplexNumber
  attr_accessor :real, :imaginary
  def initialize(a, b)
    @real = a
    @imaginary = b
  end

  def *(complex_num)
    a, b = simplify(self)
    c, d = simplify(complex_num)

    new_real = a * c - b * d
    new_imag = b * c + a * d

    ComplexNumber.new(new_real, new_imag)
  end

  def +(complex_num)
    a, b = simplify(self)
    c, d = simplify(complex_num)

    new_real = a + c
    new_imag = b + d

    ComplexNumber.new(new_real, new_imag)
  end

  def -(complex_num)
    a, b = simplify(self)
    c, d = simplify(complex_num)

    new_real = a - c
    new_imag = b - d

    ComplexNumber.new(new_real, new_imag)
  end

  def /(complex_num)
    a, b = simplify(self)
    c, d = simplify(complex_num)

    new_real = ((a * c + b * d) / (c**2 + d**2).to_f).round(2)
    new_imag = ((b * c - a * d) / (c**2 + d**2).to_f).round(2)

    ComplexNumber.new(new_real, new_imag)
  end

  def abs
    a, b = simplify(self)
    ((a**2 + b**2)**0.5).round(2)
  end

  def conjugate
    a, b = simplify(self)

    b_new = b > 0 ? 0 - b : b

    ComplexNumber.new(a, b_new)
  end

  def exp
    a, b = simplify(self)

    new_real = Math.exp(a) * Math.cos(b)
    new_imag = b == Math::PI ? 0 : Math.sin(b)

    ComplexNumber.new(new_real, new_imag)
  end

  def ==(complex_num)
    real == complex_num.real && imaginary == complex_num.imaginary
  end

  private

  def simplify(complex_num)
    [complex_num.real, complex_num.imaginary]
  end
end

module Version
  VERSION = 1
end
