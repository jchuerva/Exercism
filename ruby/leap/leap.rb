# // leap return if it's a leap year
module Year
  def self.leap?(year)
    return true if (year % 4).zero? && (year % 100 != 0 || (year % 400).zero?)

    false
  end
end
