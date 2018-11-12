# Module Luhn comment
module Luhn
  def self.valid?(number)
    number.delete!(' ')
    return false if number.size < 2 || number =~ /[A-Za-z]/ || number =~ (/\D/)

    check = check_luhn(number)
    (sum_number(check) % 10).zero?
  end

  private_class_method def self.check_luhn(number)
    number.scan(/\d/).reverse.map.with_index do |num, index|
      if index.odd?
        double_num = num.to_i * 2
        double_num > 9 ? double_num -= 9 : double_num
      else
        num.to_i
      end
    end
  end

  private_class_method def self.sum_number(number)
    number.inject(0, :+)
  end
end