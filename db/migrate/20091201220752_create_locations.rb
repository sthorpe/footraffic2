class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string  :name
      t.text    :description
      t.string  :phone
      t.string  :status
      t.integer :address_id
      t.integer :business_id
      t.integer :foursquare_id
      t.string  :time_zone
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end