# Object Oriented Programming

# Operator Overloading

class FoodPortion
  attr_reader :grams

  def initialize(grams)
    @grams = grams
  end

  # Overload + operator
  def +(other)
    FoodPortion.new(@grams + other.grams)
  end

  # Overload == operator
  def ==(other)
    @grams == other.grams
  end
 
  # Overried the string representation
  def to_s
    "#{grams}g"
  end
end

portion1 = FoodPortion.new(50)
portion2 = FoodPortion.new(30)
total = portion1 + portion2

puts "Total: #{total}"         
puts portion1 == portion2 