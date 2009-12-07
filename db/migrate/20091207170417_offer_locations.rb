class OfferLocations < ActiveRecord::Migration
  def self.up
    create_table :offer_locations, :force => true do |t|
      t.integer :offer_id
      t.integer :location_id
    end
  end

  def self.down
    drop_table :offer_locations
  end
end
