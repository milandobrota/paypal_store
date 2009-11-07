# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_paypal_store_session',
  :secret      => '707a2e20a7fb7af6e67e0ab97e0924c4e830cbec8bd266c4b9ce6cb806c7314bf5c1b83a01dad7c3b0c3a3f99c8e5960be082dbf27ca2063112dfc0059bf17d1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
