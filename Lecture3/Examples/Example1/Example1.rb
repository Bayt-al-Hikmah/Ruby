# Working with methods

# Creating simple method

def say_hello   
	puts "Hello, user!" 
end  
say_hello # calling the method


# Method with parameters and return value

def add_two_numbers(num1, num2)
	result = num1 + num2   
	return result 
end  
a = add_two_numbers(2, 3) 
puts a

# Method with optional parameters

def greet(name = "user")
	puts "Hello #{name}" 
end  
greet
greet("Mohamed")


# Varable scope

def add_two_numbers(num1, num2)
	result = num1 + num2   
	return result 
end  
 
a = add_two_numbers(2, 3) 
puts a 
puts result  # Error: undefined local variable`