# RomanNumeralsTest tanslate into roman
module RomanNumerals
  letters = %w[M CM D CD C XC L XL X IX V IV I]
  values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4,1]
  LETTERS = letters.zip values

  def to_roman
    c = 0
    n = self
    LETTERS.map { |l, v| c, n = n.divmod v; l * c }.join ''
  end
end

Integer.class_eval { include RomanNumerals }
