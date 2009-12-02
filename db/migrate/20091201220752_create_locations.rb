class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string  :name
      t.text    :description
      t.string  :status
      t.integer :address_id
      t.integer :business_id
      t.integer :foursquare_id
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end