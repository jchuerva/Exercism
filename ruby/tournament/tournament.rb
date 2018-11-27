# Tournament class comment
class Tournament
  COLUMN_ATTRIBUTES = %w[name matches_played win draw lost points].freeze

  def self.tally(input)
    @teams = {}
    input.each_line { |s| teams(remove_new_line(s)) } unless input == "\n"
    results(sort_results)
  end

  private_class_method def self.remove_new_line(sentence)
    sentence.gsub("\n",'')
  end

  private_class_method def self.teams(input)
    (t_names, result) = teams_and_result(input)

    create_team(t_names)

    points(t_names, result)
  end

  private_class_method def self.results(results)
    row_title + results.sum('') { |team| row(team) + "\n" }
  end

  private_class_method def self.row_title
    COLUMN_ATTRIBUTES.map { |attr| row_title_attr(attr) }.join(' | ') + "\n"
  end

  private_class_method def self.row_title_attr(attr)
    if attr == 'name'
      sprintf("%-30s", 'Team')
    else
      sprintf("%2s", attr_title(attr))
    end
  end

  private_class_method def self.attr_title(attr)
    attr.split('_').sum('') { |i| i.upcase[0] }
  end

  private_class_method def self.row(team)
    # each attribute
    COLUMN_ATTRIBUTES.map { |attr| get_attribute(team, attr) }.join(' | ')
  end

  private_class_method def self.get_attribute(team, attr)
    if attr == 'name'
      # team.instance_variable_get(attr).ljust(30)
      sprintf('%-30s', team.instance_variable_get(conv_attribute_to_sym(attr)))
    else
      # team.instance_variable_get(attr).to_s.rjust(2)
      sprintf('%2s', team.instance_variable_get(conv_attribute_to_sym(attr)))
    end
  end

  private_class_method def self.conv_attribute_to_sym(attr)
    ('@' + attr).to_sym
  end

  private_class_method def self.sort_results
    @teams.values.sort_by { |i| [-i.calculate_points, i.name] }
  end

  private_class_method def self.points(t_names, result)
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

  private_class_method def self.create_team(t_names)
    t_names.each do |name|
      @teams[name] = Team.new(name) unless @teams.has_key?(name)
    end
  end

  private_class_method def self.find_team(t_name)
    @teams[t_name]
  end

  private_class_method def self.teams_and_result(input)
    dev_input = input.split(';')
    teams = dev_input[0..1]
    result = dev_input[2]
    [teams, result]
  end

  private
  # Team class comment
  class Team
    attr_accessor :name, :matches_played, :win, :draw, :lost, :points
    
    def initialize(name)
      @name = name
      @matches_played = 0
      @win = 0
      @draw = 0
      @lost = 0
      @points = 0
    end

    def add_win
      @matches_played += 1
      @win += 1
      @points = calculate_points
    end

    def add_loss
      @matches_played += 1
      @lost += 1
    end

    def add_draw
      @matches_played += 1
      @draw += 1
      @points = calculate_points
    end

    def calculate_points
      win * 3 + draw
    end
  end
end

module Version
  VERSION = 4
end
