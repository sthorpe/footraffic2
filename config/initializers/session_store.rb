# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ratr_session',
  :secret      => 'd98871ee5d723fa868787e3c3d928e348987878ea3f193c82ffacd87878be18842e297f440f2605b14457ce6427ba6ec887878739dff29f3d0a4587'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
#ActionController::Base.session_store = :active_record_store
