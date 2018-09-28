# PrimeFactos comment
module PrimeFactors
  def self.for(num) 
    n = 2
    factors = []
    while num != 1
      if (num % n).zero?
        factors << n
        num /= n
      else
        n += 1
      end
    end
    factors
  end
end
