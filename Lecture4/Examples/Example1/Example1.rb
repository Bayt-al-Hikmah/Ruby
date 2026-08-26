# Object Oriented Programming

# Creating simple class
class Person
  @name = "Ali"
  @age = 20
  def greet
    puts "Hello, my name is #{@name}!"
  end
end

# Creating object from the class
person = Person.new
person.greet # using the object method

# Creating Class with constructor

class User
  # creating the constructor
  def initialize(name, age)
    @name = name 
    @age = age    
  end
  def greet
    puts "Hello, my name is #{@name}!"
  end
end

user = User.new("Alice", 30)
user.greet
