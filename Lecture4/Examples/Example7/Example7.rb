# Object Oriented Programming

# Polymorphism
class Pet
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Dog < Pet
  def speak
    puts "#{name} says Woof!"
  end
end

class Cat < Pet
  def speak
    puts "#{name} says Meow!"
  end
end

pets = [Dog.new("Rex"), Cat.new("Luna")]

# Looping through the object and calling their speak
pets.each do |pet|
  pet.speak # We get different behaviors depending on the object 
end