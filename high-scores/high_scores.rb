class HighScores
  def initialize(scores)
    @scores = scores
  end

  attr_reader :scores

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.sort.reverse.take(3)
  end

  def report
    difference_from_personal_best = personal_best - latest

    if difference_from_personal_best.zero?
      "Your latest score was #{latest}. That's your personal best!"
    else
      "Your latest score was #{latest}. That's #{difference_from_personal_best} short of your personal best!"
    end
  end
end
