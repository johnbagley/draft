class AddAuctionValuestoAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :auction_value, :integer, default: 0
  end
end
