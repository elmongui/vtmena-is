# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vtmena_session',
  :secret      => '96d027e930de78952e0493f65134e499bb3b01e68115159551a5b461d5ac75c3c1e5d2d314c47c62975f9ee45c626ab859f82990ae89134e7a7e1360f4affaf2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
