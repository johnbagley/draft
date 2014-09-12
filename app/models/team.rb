class Team < ActiveRecord::Base
  belongs_to :user
  has_many :memberships
  has_many :athletes, through: :memberships

  MAX_NUMBER_OF_MEMBERSHIPS = 15

  def self.number_of_players
    Membership.all.count
  end

  def self.size_warning
    if number_of_players >= MAX_NUMBER_OF_MEMBERSHIPS
      flash.alert 'Team cannot have more than 15 athletes.'
    end
  end
end
