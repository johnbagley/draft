class ChangePlayeridColumninAthletes < ActiveRecord::Migration
  def change
    remove_column :athletes, :player_id, :integer
  end
end
