class Ranking < ActiveRecord::Base
  require 'csv'
  def load_ranking
    CSV.foreach("lib/assets/#{name}.csv", headers: true)  do |row|
      Athlete.create!(row.to_hash)
    end
  end

end
