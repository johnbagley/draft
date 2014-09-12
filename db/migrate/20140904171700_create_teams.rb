class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
