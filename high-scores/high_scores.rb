class HighScores
  def initialize(scores)
    @scores = scores
  end

  attr_reader :scores

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top
    highest_to_lowest = @scores.sort { |a, b| b <=> a }
    highest_to_lowest.take(3)
  end

  def report
    score_difference = personal_best - latest
    personal_best_message = 'your personal best!'

    personal_best_message.prepend("#{score_difference} short of ") unless score_difference.zero?

    "Your latest score was #{latest}. That's #{personal_best_message}"
  end
end
