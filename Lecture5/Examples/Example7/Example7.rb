# Metaprogramming 

# Reflection and Introspection

class Person
  @name = "Ali"
  @age = 20
  def greet
    puts "Hello, my name is #{@name}!"
  end
end


puts "Hello".class                   # result String | returns an object's class.
puts 5.instance_of?(Integer)         # result true | checks whether an object is a direct instance of a specific class
puts "text".respond_to?(:upcase)     # result true | checks whether an object can respond to a particular method
puts Person.instance_methods(false)  # returns the instance methods defined directly by a class excluding methods inherited from its ancestors.
puts Person.instance_methods         # returns the instance methods defined directly by a class including methods inherited from its ancestors.