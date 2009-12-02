class UpdateBusinessesFields < ActiveRecord::Migration
  def self.up
    rename_column :businesses, :organization_name, :name
    remove_column :businesses, :key_contact
    remove_column :businesses, :address_line1
    remove_column :businesses, :address_line2
    remove_column :businesses, :address_city
    remove_column :businesses, :address_state
    remove_column :businesses, :address_zipcode
    add_column :businesses, :state, :string
    add_column :businesses, :locations_count, :integer, :default => 0
  end

  def self.down
    remove_column :businesses, :state
    add_column :businesses, :address_zipcode, :string
    add_column :businesses, :address_state,   :string
    add_column :businesses, :address_city,    :string
    add_column :businesses, :address_line2,   :string
    add_column :businesses, :address_line1,   :string
    add_column :businesses, :key_contact,     :string
    rename_column :businesses, :name, :organization_name
  end
end
