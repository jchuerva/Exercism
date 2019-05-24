import re

def __version__():
  VERSION = 1

class Phone(object):
  def __init__(self, phone_number):
    self._filter_number = ''.join(re.findall("\d", phone_number))
    if self.__hascountrycode__():
      self._filter_number = self._filter_number[1:]

    if self.__validformat__():
      self.number = self._filter_number
      self.area_code = self._filter_number[:3]
    else:
      raise ValueError("invalid number")

  def pretty(self):
    return f"({self.area_code}) {self.number[3:6]}-{self.number[6:]}"
    
  def __hascountrycode__(self):
    return len(self._filter_number) == 11 and int(self._filter_number[0]) == 1

  def __validformat__(self):
    return len(self._filter_number) == 10 and int(self._filter_number[0]) in range(2, 9) and int(self._filter_number[3]) in range(2, 9)
