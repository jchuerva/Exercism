# SpaceAge class comment
class SpaceAge
  SECONDS_ONE_EARTH_YEAR = 31_557_600.0
  PERIODS_IN_EARTH_YEARDS = {
    on_earth:   1.0,
    on_mercury: 0.2408467,
    on_venus:   0.61519726,
    on_mars:    1.8808158,
    on_jupiter: 11.862615,
    on_saturn:  29.447498,
    on_uranus:  84.016846,
    on_neptune: 164.79132
  }.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  def method_missing(method)
    # call super if you haven't found what you're looking for,
    # so that other method missings can do their thing
    super unless PERIODS_IN_EARTH_YEARDS.key?(method)
    seconds = @seconds / (PERIODS_IN_EARTH_YEARDS[method] * SECONDS_ONE_EARTH_YEAR)
    seconds.round(2)
  end
end
