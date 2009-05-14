# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tisupport_session',
  :secret      => 'c848755e46451a820fcfc1e80c217475e286e303f619fa8612d77df5e55c2dc4a596d2a3bd5ba6655210005376819c981bf84d0ff38d5d0931db6c1972816441'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
