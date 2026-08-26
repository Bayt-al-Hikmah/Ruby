# Metaprogramming 

# Handeling missing method

class DynamicPerson

  def initialize
    @attributes = {}
  end

  def method_missing(name, *args)
    if name.to_s.end_with?("=")
      @attributes[name.to_s.chop.to_sym] = args.first
    else
      @attributes[name.to_sym]
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    true
  end

end

dp = DynamicPerson.new
dp.name = "Bob"
puts dp.name  # => "Bob"

