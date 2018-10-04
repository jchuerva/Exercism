# PhoneNumber module comment
module PhoneNumber
  def self.clean(number)
    clear_num = number.scan(/\d/).join
    clear_num = clear_num[1..-1] if clear_num.country_code?

    return nil unless clear_num.valid_format?

    clear_num
  end

  private

  def country_code?
    size == 11 && self[0].to_i == 1
  end

  def valid_format?
    size == 10 && self[0].to_i.between?(2, 9) && self[3].to_i.between?(2, 9)
  end
end

String.class_eval { include PhoneNumber }