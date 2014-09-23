class AddReftoAthletes < ActiveRecord::Migration
  def change
    add_reference :athletes, :ranking, index: true
  end
end
