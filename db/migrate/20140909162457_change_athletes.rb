class ChangeAthletes < ActiveRecord::Migration
  def change
    remove_column :athletes, :team_id, :integer
    add_column :athletes, :player_id, :integer
    add_index :athletes, :player_id
  end
end
