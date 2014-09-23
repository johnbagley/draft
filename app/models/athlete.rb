class Athlete < ActiveRecord::Base
  belongs_to :membership
  belongs_to :ranking
end
