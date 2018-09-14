# Use the Sieve of Eratosthenes to find all the primes from 2 up to a given number
require 'prime'

class Sieve
  def initialize(number)
    @numbers = 2..number
  end

  def primes
    @numbers.select(&:prime?)
  end
end
