class Clock
  attr_reader :hours
  attr_reader :minutes

  def initialize(h)
    hours, minutes = ini_time(h)

    dh, @minutes = minutes.divmod(60)
    @hours = (hours + dh) % 24
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

  def ini_time(h)
    hours = h[:hour] || 0
    min = h[:minute] || 0
    [hours, min]
  end
end
