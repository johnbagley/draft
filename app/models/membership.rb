class Membership < ActiveRecord::Base
  belongs_to :team
  belongs_to :athlete
end
