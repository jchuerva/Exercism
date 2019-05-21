from random import sample, seed
from string import ascii_uppercase as AZ


nums = [str(c) for c in xrange(10)]

class Robot():
    def __init__(self):
        self.name = self.__generate_name()

    def reset(self):
      self.__init__()

    # private method
    def __generate_name(self):
        seed()  # seed from current time
        return ''.join(sample(AZ, 2) + sample(nums, 3))
