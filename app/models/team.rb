class Team < ActiveRecord::Base
  belongs_to :user
  has_many :memberships
  has_many :athletes, through: :memberships


end
