# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

berry_rankings = Ranking.create(name: "Berry")
bagley_rankings = Ranking.create(name: "Bagley")

require 'csv'
rankings = [berry_rankings, bagley_rankings]

rankings.each do |ranking|
  CSV.foreach("lib/assets/#{ranking.name}.csv", headers: true)  do |row|
    athlete_params = row.to_hash
    athlete_params[:ranking_id] = ranking.id
    Athlete.create!(athlete_params)
  end
end
