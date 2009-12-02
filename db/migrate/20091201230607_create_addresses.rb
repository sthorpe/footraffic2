class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string  :street
      t.string  :street_2
      t.string  :apt_suite
      t.string  :city
      t.string  :state
      t.string  :zip_code
      t.float   :lat
      t.float   :lng
      t.string  :type
      t.boolean :public, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
