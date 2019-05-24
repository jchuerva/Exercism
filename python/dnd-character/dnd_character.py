from random import randint

ABILITIES = (
    'strength', 'dexterity', 'constitution',
    'intelligence', 'wisdom', 'charisma')

class Character:
  def __init__(self):
    for ability in ABILITIES:
      setattr(self, ability, self.ability())
    self.hitpoints = 10 + modifier(self.constitution)

  def ability(self):
    # sum of 3 max values of the dice
    return sum(sorted([randint(1, 6) for _ in range(4)])[1:])

def modifier(num):
  return (num - 10)//2

def version():
  VERSION = 1
