from __future__ import division


class Rational(object):
    def __init__(self, numer, denom):
        self.numer = numer
        self.denom = denom

    def __eq__(self, other):
      reduce_numer = self.__reduce__(self.numer, self.denom).numer
      reduce_denom = self.__reduce__(self.numer, self.denom).denom
      return reduce_numer == other.numer and reduce_denom == other.denom

    def __repr__(self):
        return '{}/{}'.format(self.numer, self.denom)

    def __add__(self, other):
      calc_number = (self.numer * other.denom) + (other.numer * self.denom)
      common_denon = self.denom * other.denom
      return self.__reduce__(calc_number, common_denon)

    def __sub__(self, other):
      calc_number = (self.numer * other.denom) - (other.numer * self.denom)
      common_denon = self.denom * other.denom
      return self.__reduce__(calc_number, common_denon)

    def __mul__(self, other):
      calc_number = self.numer * other.numer
      calc_denon = self.denom * other.denom
      return self.__reduce__(calc_number, calc_denon)

    def __truediv__(self, other):
      calc_number = self.numer * other.denom
      calc_denon = self.denom * other.numer
      return self.__reduce__(calc_number, calc_denon)

    def __abs__(self):
      return Rational(self.__ensure_positive__(self.numer), self.__ensure_positive__(self.denom))

    def __pow__(self, power):
      calc_number = self.numer ** power
      calc_denon = self.denom ** power
      return self.__reduce__(calc_number, calc_denon)

    def __rpow__(self, base):
      return base ** (self.numer/self.denom)

    def __reduce__(self, numer, denon):
      reduce_numer = numer
      reduce_denom = denon
      for i in range(2, min(self.__ensure_positive__(numer), self.__ensure_positive__(denon)) + 1):
        if (reduce_numer % i == 0 ) and (reduce_denom % i == 0):
          reduce_numer = reduce_numer / i
          reduce_denom = reduce_denom / i
      if reduce_numer == 0:
        reduce_denom = 1
      if reduce_denom < 0:
        reduce_denom = self.__change_signal__(reduce_denom)
        reduce_numer = self.__change_signal__(reduce_numer)
      return Rational(int(reduce_numer), int(reduce_denom))

    def __ensure_positive__(self, num):
      if num < 0:
        return (0 - num)
      else:
        return num

    def __change_signal__(self, num):
      return (0 - num)



def version():
  VERSION = 1
