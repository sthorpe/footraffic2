class UpdateOffers < ActiveRecord::Migration
  def self.up
    rename_column :offers, :organization_id, :business_id
    rename_column :offers, :offer_terms, :terms
    rename_column :offers, :offer_expiration, :expiration
    rename_column :offers, :free_y_n, :free
    add_column :offers, :exclusive_to_ft, :boolean
    add_column :offers, :products, :string
    add_column :offers, :restrictions, :text
    add_column :offers, :start, :timestamp  
    add_column :offers, :end, :timestamp
    add_column :offers, :status, :string
  end

  def self.down
    remove_column :offers, :status
    remove_column :offers, :end
    remove_column :offers, :start
    remove_column :offers, :restrictions
    remove_column :offers, :products
    remove_column :offers, :exclusive_to_ft
    rename_column :offers, :expiration, :offer_expiration
    rename_column :offers, :terms, :offer_terms
    rename_column :offers, :business_id, :organization_id
    rename_column :offers, :free, :free_y_n
  end
end