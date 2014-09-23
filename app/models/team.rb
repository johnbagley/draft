class Team < ActiveRecord::Base
  belongs_to :user
  belongs_to :ranking
  has_many :memberships
  has_many :athletes, through: :memberships

end
