class AddFoursquareLogin < ActiveRecord::Migration
  def self.up
    add_column :users, :foursquare_request_token_key, :string
    add_column :users, :foursquare_request_token_secret, :string
  end

  def self.down
    remove_column :users, :foursquare_request_token_key
    remove_column :users, :foursquare_request_token_secret
  end
end
