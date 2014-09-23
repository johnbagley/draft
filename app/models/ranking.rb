class Ranking < ActiveRecord::Base
  has_many :teams
  has_many :athletes
  require 'csv'
  def load_ranking
    CSV.foreach("lib/assets/#{name}.csv", headers: true)  do |row|
      Athlete.create!(row.to_hash)
    end
  end

end
