# Object Oriented Programming

# Override methods

class Pet
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def speak
    puts "#{name} makes a sound."
  end
  def info
    puts "#{name} is #{age} years old."
  end
end

class Dog < Pet
  # override speak method 
  def speak
    super      # call parent class speak method
    puts "#{name} says Woof!"
  end
end

class Cat < Pet
  # override peak method
  def speak 
    puts "#{name} says Meow!"
  end
end

dog = Dog.new("Rex", 4)
cat = Cat.new("Luna", 2)
dog.speak
cat.speak