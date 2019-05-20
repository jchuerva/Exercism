import pdb
class SpaceAge(object):

  seconds_in_earth = 31557600.0
  perios_in_earth = {
    "on_earth":   1.0,
    "on_mercury": 0.2408467,
    "on_venus":   0.61519726,
    "on_mars":    1.8808158,
    "on_jupiter": 11.862615,
    "on_saturn":  29.447498,
    "on_uranus":  84.016846,
    "on_neptune": 164.79132
  }

  def __init__(self, seconds):
    self.seconds = seconds
    self.earth_age = self.seconds / self.seconds_in_earth
    for planet in self.perios_in_earth:
      setattr(self, planet, self.calc(planet))

  def calc(self, planet):
    return lambda: round(self.earth_age/self.perios_in_earth[planet], 2)


def version():
  VERSION: 1

