class AddOwnerToBusiness < ActiveRecord::Migration
  def self.up
    add_column :businesses, :owner_id, :integer
  end

  def self.down
    remove_column :businesses, :owner_id
  end
end
