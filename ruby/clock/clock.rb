class Clock
  attr_reader :total_minutes

  ONE_DAY_IN_MIN = 24 * 60

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60) + minute
  end

  def to_s
    format('%02d:%02d', hours, minutes)
  end

  def +(other)
    Clock.new(hour: hours, minute: minutes + other.total_minutes)
  end

  def -(other)
    Clock.new(hour: hours, minute: minutes - other.total_minutes)
  end

  def ==(other)
    to_s == other.to_s
  end

  private
  def hours
    total_minutes % ONE_DAY_IN_MIN / 60
  end

  def minutes
    total_minutes % 60
  end
end
