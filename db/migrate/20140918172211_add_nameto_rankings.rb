class AddNametoRankings < ActiveRecord::Migration
  def change
    add_column :rankings, :name, :string
  end
end
