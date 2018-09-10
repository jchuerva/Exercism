module Raindrops

  def self.convert(number)
    result = ""
    
    # add text if the number contains the factor
    result << "Pling" if number % 3 == 0
    result << "Plang" if number % 5 == 0
    result << "Plong" if number % 7 == 0

    # return the number when the number does not have 3, 5, or 7 as a factor
    result = number.to_s if result.empty?
    
    result
  end

end