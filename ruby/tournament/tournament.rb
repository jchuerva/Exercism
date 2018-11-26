# Tournament class comment
class Tournament

  def self.tally(input)
    @teams = {}
    input.each_line { |s| teams(remove_new_line(s)) } unless input == "\n"
    results(sort_results)
  end

  def self.remove_new_line(sentence)
    sentence.gsub("\n",'')
  end

  def self.teams(input)
    (t_names, result) = teams_and_result(input)

    create_team(t_names)

    # add points
    points(t_names, result)
  end

  def self.results(results)
    output = "Team                           | MP |  W |  D |  L |  P\n"
    output + results.map { |team| attributes(team) + "\n" }.join
  end

  def self.attributes(team)
    # calculate points just before print out the attributes
    team.points = team.calculate_points
    # print each attribute
    team.instance_variables.map { |attr| get_attribute(team, attr) }.join(' | ')
  end

  def self.get_attribute(team, attr)
    # convert symbol to str
    if attr.to_s.tr(":@",'') == 'name'
      team.instance_variable_get(attr).ljust(30)
    else
      team.instance_variable_get(attr).to_s.rjust(2)
    end
  end

  def self.sort_results
    @teams.values.sort_by { |i| [-i.calculate_points, i.name] }
  end

  def self.points(t_names, result)
    t_home = find_team(t_names[0])
    t_away = find_team(t_names[1])
    case result
    when 'win'then
      t_home.add_win
      t_away.add_loss
    when 'loss' then
      t_home.add_loss
      t_away.add_win
    when 'draw' then
      t_home.add_draw
      t_away.add_draw
    else
      raise "Invalid format"
    end
  end

  def self.create_team(t_names)
    t_names.each do |name|
      @teams[name] = Team.new(name) unless @teams.has_key?(name)
    end
  end

  def self.find_team(t_name)
    @teams[t_name]
  end

  def self.teams_and_result(input)
    dev_input = input.split(';')
    teams = dev_input[0..1]
    result = dev_input[2]
    [teams, result]
  end

  # Team class comment
  class Team
    attr_accessor :name, :matches_played, :win, :draw, :lost, :points
    def initialize(name)
      @name = name
      @matches_played = 0
      @win = 0
      @draw = 0
      @lost = 0
    end

    def add_win
      @matches_played += 1
      @win += 1
    end

    def add_loss
      @matches_played += 1
      @lost += 1
    end

    def add_draw
      @matches_played += 1
      @draw += 1
    end

    def calculate_points
      win * 3 + draw
    end
  end
end

module Version
  VERSION = 3
end
