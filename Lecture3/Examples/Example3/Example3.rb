# Working with methods

# Passing method as argument

def greet(name)
  puts "Hello, #{name}!"
end

def run_callback(callback, value)
  callback.call(value) # Call the passed function
end

run_callback(method(:greet), "Ruby")

# Returning method 

def add(a, b)
  a + b
end

def multiply(a, b)
  a * b
end

def get_operation(type)
  if type == "add"
    return method(:add)
  elsif type == "multiply"
    return method(:multiply)
  else
    raise "Unknown operation"
  end
end

operation = get_operation("multiply") # Save the returned function
puts operation.call(3, 4)             # Call the saved function
