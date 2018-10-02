# Robot class comment
class Robot
  attr_accessor :name

  @robot_names = []

  def initialize
    @name = Robot.generate_new_name
  end

  def reset
    @name = Robot.generate_new_name
  end

  def self.generate_new_name
    loop do
      letters = ('A'..'Z').to_a.sample(2).join
      digits = rand.to_s[2..4]
      name = "#{letters}#{digits}"
      unless @robot_names.include?(name)
        @robot_names << name
        return name
      end
    end
  end

  def self.forget
    @robot_names = []
  end
end
