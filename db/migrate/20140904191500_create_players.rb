class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.belongs_to :team
      t.belongs_to :athlete

      t.timestamps
    end
  end
end
