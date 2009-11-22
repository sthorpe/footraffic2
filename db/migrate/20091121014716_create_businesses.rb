class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.string :organization_name
      t.string :key_contact
      t.string :email_address
      t.string :office_telephone
      t.string :mobile_telephone
      t.string :address_line1
      t.string :address_line2
      t.string :address_city
      t.string :address_state
      t.string :address_zipcode
      t.date :state_date
      t.text :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :businesses
  end
end
