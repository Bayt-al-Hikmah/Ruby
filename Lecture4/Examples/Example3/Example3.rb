# Object Oriented Programming

# Static Methods and Attributes

class MathUtils
  @@pi = 3.14159  # Class variable (static attribute), it use double @

  def self.pi     # Class variable method (static method) prefixed with self
    @@pi
  end

  def self.circle_area(radius)# Class variable method (static method) prefixed with self
    @@pi * radius**2
  end
end

puts MathUtils.pi        
puts MathUtils.circle_area(5) 

# Class constant

class MathUtils
  PI = 3.14159  # Class constant

  def self.circle_area(radius)
    PI * radius**2
  end
end

puts MathUtils::PI
puts MathUtils.circle_area(5)
