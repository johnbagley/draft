class Membership < ActiveRecord::Base
  QB_MAX = 4
  belongs_to :team
  belongs_to :athlete

  validates :athlete, uniqueness: { scope: :team_id, message: "This athlete is already on your team." }

  validate :qb_position_available

  def qb_position_available
    if athlete.name.include?("QB") && qbs >= QB_MAX
      errors.add(:name, "Cannot have more than #{QB_MAX} Quarterbacks on team.")
    end
  end

  def qbs
    team.athletes.where("name ilike '%qb%'").count
  end
end
