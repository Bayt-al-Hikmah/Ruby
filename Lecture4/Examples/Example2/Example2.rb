# Object Oriented Programming

## Working with Getter and Setter

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

person = Person.new("Alice", 30)
puts person.name    # We will have error since object attribute are private by default


class User
  attr_reader :age         # With this we set age attribute accessible to reading
  attr_writer :address     # With this we set address attribute accessible to writing
  attr_accessor :name      # With this we set name attribute accessible to both reading and writing
  def initialize(name, age)
    @name = name
    @age = age
  end
end

user = User.new("Alice", 30)
puts user.name   
user.name = "Bob"
puts user.age  

# Using method as Getter and Setter

class Cat
  def name(cat_name=nil)
    if cat_name
      @name = cat_name
    end
    return @name
  end
  def initialize(name)
    @name = name
  end
end

cat = Cat.new("Micha")
puts cat.name   
cat.name("Mocho")
puts cat.name