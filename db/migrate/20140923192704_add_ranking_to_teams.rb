class AddRankingToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :ranking, index: true
  end
end
