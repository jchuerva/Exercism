# Tournament class comment
class Tournament

  def self.tally(input)
    @teams = {}
    input.split("\n").each { |i| teams(i) }
    results(sort_results)
  end

  def self.teams(input)
    t_names = teams_and_result(input)[0]
    result = teams_and_result(input)[1]

    # create_or_find_team
    create_team(t_names)

    # add points
    points(t_names, result)
  end

  def self.results(results)
    output = "Team                           | MP |  W |  D |  L |  P\n"
    results.each { |r|
      output += "#{r.name.ljust(30)} | #{r.mp.to_s.rjust(2)} | #{r.w.to_s.rjust(2)} | #{r.d.to_s.rjust(2)} | #{r.l.to_s.rjust(2)} | #{r.p.to_s.rjust(2)}\n" }
    output
  end

  def self.sort_results
    @teams.values.sort_by { |i| [ -i.p, i.name ] }
  end

  def self.points(t_names, result)
    case result
    when 'win'then
      find_team(t_names[0]).add_win
      find_team(t_names[1]).add_loss
    when 'loss' then
      find_team(t_names[0]).add_loss
      find_team(t_names[1]).add_win
    when 'draw' then
      find_team(t_names[0]).add_draw
      find_team(t_names[1]).add_draw
    else
      puts "Invalid format"
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
    teams = input.split(';')[0..1]
    result = input.split(';')[2]
    [teams, result]
  end

  # Team class comment
  class Team
    attr_accessor :name, :mp, :w, :d, :l, :p
    def initialize(name)
      @name = name
      @mp = 0
      @w = 0
      @d = 0
      @l = 0
      @p = 0
    end

    def add_win
      @mp += 1
      @w += 1
      @p += 3
    end

    def add_loss
      @mp += 1
      @l += 1
    end

    def add_draw
      @mp += 1
      @d += 1
      @p += 1
    end
  end
end

module Version
  VERSION = 2
end
