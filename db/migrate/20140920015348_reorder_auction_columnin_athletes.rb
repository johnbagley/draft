class ReorderAuctionColumninAthletes < ActiveRecord::Migration
  def up
    change_column :athletes, :auction_value, :integer, after: :points
  end

end
