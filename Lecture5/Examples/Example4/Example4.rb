# Metaprogramming 

# Dynamic Method Creation

class Person
   def initialize(name, age)
      @name = name 
      @age = age    
    end
    # dynamic creation of setter and getter
   [:name, :age, :city].each do |attribute|
     define_method(attribute) do
       instance_variable_get("@#{attribute}")
     end
 
     define_method("#{attribute}=") do |value|
       instance_variable_set("@#{attribute}", value)
     end
   end
 end
 
 p = Person.new("Ali",45)
 p.name = "Alice"
 puts p.name  # => "Alice"