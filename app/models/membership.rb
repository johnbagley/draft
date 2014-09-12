class Membership < ActiveRecord::Base
  belongs_to :team
  belongs_to :athlete

  validates :athlete, uniqueness: { scope: :team_id }

end
