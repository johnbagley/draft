class RemoveNamefromMemberships < ActiveRecord::Migration
  def change
    remove_column :memberships, :name, :string
  end
end
