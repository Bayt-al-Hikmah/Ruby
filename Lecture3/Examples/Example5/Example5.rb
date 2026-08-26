# Working with modules

# Built in modules

# Core modules

puts Math.sqrt(25)  # Core modules are always accessed and loaded

# Standard Library Modules

require 'date' # Standard library modules need to be required

puts Date.today

# Costume module

require './greet/greetings' # Loads greetings.rb module

Greetings.say_hello("Ali")  # Using the function from the module