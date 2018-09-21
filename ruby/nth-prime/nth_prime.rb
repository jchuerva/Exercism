# Prime return the primer number
module Prime
  def self.nth(number)
    raise ArgumentError if number < 1

    ini = 2
    @num_primes = []
    while @num_primes.size < number
      @num_primes << ini if prime?(ini)
      ini += 1
    end
    @num_primes.last
  end

  private_class_method def self.prime?(num)
    @num_primes.each { |prime| return false if (num % prime).zero? }
    true
  end
end
