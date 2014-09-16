class Membership < ActiveRecord::Base
  QB_MAX = 4
  belongs_to :team
  belongs_to :athlete

  validates :athlete, uniqueness: { scope: :team_id }
  validate :qb_valid?

  def qb
    team.athletes.where("name ilike '%qb%'")
  end

  def qb_valid?
    if qb.count == QB_MAX
      errors.add(:team, "Can't have that many quarterbacks")
    end
  end

end
