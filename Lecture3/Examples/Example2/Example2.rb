# Working with methods

# Method with arbitrary number of arguments

def say_hello(*names)
	names.each { |name| puts "Hello #{name}" } 
end  
say_hello("Mohamed", "Ahmed", "Ali")

# Method with arbitrary number of key value as arguments

def greet(**names)
	names.each { |key, value| puts "Hello #{value}" } 
end  
greet(name1: "Mohamed", name2: "Ahmed", name3: "Ali")

# Returning multiple values

def get_data
    return 8, 7, 9
end

a, b, c = get_data
print c