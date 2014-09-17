class Membership < ActiveRecord::Base
  QB_MAX = 4
  belongs_to :team
  belongs_to :athlete

  validates :athlete, uniqueness: { scope: :team_id, message: "This athlete is already on your team." }

end
