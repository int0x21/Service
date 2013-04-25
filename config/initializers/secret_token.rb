# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Service::Application.config.secret_key_base = '25a88e905243e1838af57d7b375ef215ff5109621dac609c2f2bafe123e88a7908b972da21ccd38b6d0c6d12b5d71e0b8cfdf3362492a58fa21439e8b5a58a74'
