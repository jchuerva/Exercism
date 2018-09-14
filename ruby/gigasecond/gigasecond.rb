module Gigasecond
  # GIGASECOND is one billion (10**9) seconds
  GIGASECOND = 1e9

  def self.from(time)
    time + GIGASECOND
  end
end
