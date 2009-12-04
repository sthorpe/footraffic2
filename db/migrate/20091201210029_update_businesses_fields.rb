class UpdateBusinessesFields < ActiveRecord::Migration
  def self.up
    rename_column :businesses, :organization_name,  :name
    rename_column :businesses, :email_address,      :email
    rename_column :businesses, :office_telephone,   :phone
    add_column    :businesses, :status,             :string
    add_column    :businesses, :description,        :text
    add_column    :businesses, :url,                :string
    add_column    :businesses, :locations_count,    :integer, :default => 0
    remove_column :businesses, :key_contact
    remove_column :businesses, :mobile_telephone
    remove_column :businesses, :address_line1
    remove_column :businesses, :address_line2
    remove_column :businesses, :address_city
    remove_column :businesses, :address_state
    remove_column :businesses, :address_zipcode
  end

  def self.down
    rename_column :businesses, :phone,            :office_telephone
    rename_column :businesses, :name,             :organization_name
    rename_column :businesses, :email,            :email_address
    add_column    :businesses, :address_zipcode,  :string
    add_column    :businesses, :address_state,    :string
    add_column    :businesses, :address_city,     :string
    add_column    :businesses, :address_line2,    :string
    add_column    :businesses, :address_line1,    :string
    add_column    :businesses, :key_contact,      :string
    add_column    :businesses, :mobile_telephone, :string
    remove_column :businesses, :description
    remove_column :businesses, :url
    remove_column :businesses, :status
  end
end
