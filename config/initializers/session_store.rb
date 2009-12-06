# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ratr_session',
  :secret      => 'b8e061c9e2b96a8385210b7d8b8bcf31ebd1767d620f8c4dda20e8d686b5b12a391ee4f4b8048cf517b5299603698e5b0489cb144947e0f8a2cf770b11d45f06'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
