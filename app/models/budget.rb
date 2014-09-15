class Budget
  def initialize(team)
    @team = team
  end

  BUDGET = 200

  def self.sum_of_athletes(team)
    team.athletes.sum(:auction_value)
  end

  def self.remaining(team)
    BUDGET - sum_of_athletes(team)
  end
end
