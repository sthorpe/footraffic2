class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :name
      t.integer :organization_id
      t.string :item
      t.string :offer_terms
      t.date :offer_expiration
      t.decimal :percent_off
      t.boolean :free_y_n 
      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
