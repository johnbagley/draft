class Budget
  TEAM_BUDGET = 200

  def self.remaining(team)
    new(team).remaining
  end

  def initialize(team)
    @team = team
  end

  def remaining
    TEAM_BUDGET - @team.athletes.sum(:auction_value)
  end
end
