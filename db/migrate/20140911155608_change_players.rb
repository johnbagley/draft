class ChangePlayers < ActiveRecord::Migration
  def change
    add_index :players, [:team_id, :athlete_id]
  end
end
