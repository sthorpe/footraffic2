class BusinessesUpdates2 < ActiveRecord::Migration
  def self.up
    add_column :businesses, :category_id, :integer
    add_column :businesses, :primary_category_id, :integer
  end

  def self.down
    remove_column :businesses, :primary_category_id
    remove_column :businesses, :category_id
  end
end
