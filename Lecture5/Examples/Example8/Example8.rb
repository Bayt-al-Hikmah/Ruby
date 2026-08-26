# Metaprogramming 

# Modifying Existing Classes

class String
  def shout
    self.upcase + "!"
  end
end

text = "hello"
puts text.shout  # => "HELLO!"