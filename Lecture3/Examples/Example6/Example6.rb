# Working with Gems

# Built-in Gems

require 'json' # Require the gems

data = { name: "Ali", age: 22 }
puts JSON.generate(data) # use the gems function

# Working with Third Party Germs

# - We install the gems using: gem install
# - Example: gem install httparty

require 'httparty' # After installing we requite it it

response = HTTParty.get('https://api.github.com') # Now we can use method from the gem module
puts response.body