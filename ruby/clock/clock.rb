class Clock
  attr_reader :hours
  attr_reader :minutes

  ONE_DAY = 24 * 60

  def initialize(hour: 0, minute: 0)
    total_minutes = (hour * 60) + minute
    @hours = min(total_minutes) / 60
    @minutes = min(total_minutes) % 60
  end

  def to_s
    format('%02d:%02d', @hours, @minutes)
  end

  def +(other)
    Clock.new(hour: @hours + other.hours, minute: @minutes + other.minutes)
  end

  def -(other)
    Clock.new(hour: @hours - other.hours, minute: @minutes - other.minutes)
  end

  def ==(other)
    @hours == other.hours && @minutes == other.minutes
  end

  private

  def min(total_min)
    total_min % ONE_DAY
  end
end
