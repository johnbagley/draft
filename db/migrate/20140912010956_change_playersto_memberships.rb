class ChangePlayerstoMemberships < ActiveRecord::Migration
  def change
    rename_table :players, :memberships
  end
end
