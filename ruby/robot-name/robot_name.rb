# Robot class comment
class Robot
  attr_accessor :name

  def initialize
    @name = @@robot_names.next
  end

  def reset
    initialize
  end

  def self.forget
    @@robot_names = [*'AA000'..'ZZ999'].shuffle.each
  end
end
