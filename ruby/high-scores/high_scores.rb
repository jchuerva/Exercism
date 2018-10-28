# HighScores class comment
class HighScores
  VERSION = 1
  def initialize(score)
    @score = score
  end

  def scores
    @score
  end

  def latest
    @score.last
  end

  def highest
    @score.sort.last
  end

  def top
    @score.sort.reverse[0..2]
  end

  def report
    if @score.last == highest
      "Your latest score was #{highest}. That's your personal best!"
    else
      "Your latest score was #{@score.last}. That's #{highest - @score.last} short of your personal best!"
    end
  end
end
