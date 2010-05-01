# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_oilzilla_session',
  :secret      => '77e9aaba9ddcc8f6391e72de0e4434e86bc2f13459d8e5bcd27402a65b755ded30d5eac63139323b268f94df69a1f480642dded1914f81ceb8f3fc3b62f94d1e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
