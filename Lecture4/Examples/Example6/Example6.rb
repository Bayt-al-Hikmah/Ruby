# Object Oriented Programming

# Encapsulation

class Pet
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def info
    puts "#{name} is #{age} years old."
    check_health
  end

  private

  def check_health
    puts "#{name}'s health is good!"
  end
end

pet = Pet.new("Coco", 4)
pet.info
pet.check_health # Error trying to access private method