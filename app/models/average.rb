class Average
  def initialize(team)
    @team = team
  end

  def self.weekly_points_sum(team)
    team.athletes.sum(:points) / 16
  end

  def self.points_count(team)
    team.athletes.count(:points)
  end

  def self.weekly_points(team)
    (weekly_points_sum(team) / points_count(team).to_f) * 9
  end
end
