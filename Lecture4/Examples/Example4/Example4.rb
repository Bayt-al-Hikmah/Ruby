# Object Oriented Programming

# Inheritance

# Create Parent Class
class Pet
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def eat
    puts "#{name} is eating."
  end
  def sleep
    puts "#{name} is sleeping."
  end
end

# Dog inherite from Pet
class Dog < Pet
  def speak
    puts "#{name} says Woof!"
  end
end

# Cat inherite from Pet
class Cat < Pet
  def speak
    puts "#{name} says Meow!"
  end
end


dog = Dog.new("Buddy", 3)
cat = Cat.new("Whiskers", 2)
dog.eat       
dog.speak    
cat.sleep     
cat.speak  