class Team < ActiveRecord::Base
  belongs_to :user
  has_many :memberships
  has_many :athletes, through: :memberships

  def self.number_of_players
    Membership.all.count
  end
end
