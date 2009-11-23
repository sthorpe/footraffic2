# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091122023624) do

  create_table "businesses", :force => true do |t|
    t.string   "organization_name"
    t.string   "key_contact"
    t.string   "email_address"
    t.string   "office_telephone"
    t.string   "mobile_telephone"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zipcode"
    t.date     "start_date"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.string   "item"
    t.string   "offer_terms"
    t.date     "offer_expiration"
    t.integer  "percent_off",      :limit => 10, :precision => 10, :scale => 0
    t.boolean  "free_y_n"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                           :limit => 40
    t.string   "name",                            :limit => 100, :default => ""
    t.string   "email",                           :limit => 100
    t.string   "crypted_password",                :limit => 40
    t.string   "salt",                            :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",                  :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",                 :limit => 40
    t.integer  "company_id"
    t.datetime "activated_at"
    t.string   "state",                                          :default => "passive"
    t.datetime "deleted_at"
    t.string   "foursquare_request_token_key"
    t.string   "foursquare_request_token_secret"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
