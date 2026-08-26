# Working with Methods

# Recursive methods

def factorial(n)   
	return 1 if n == 0   
	n * factorial(n - 1) 
	end  
puts factorial(5)

# Lambda functions

# Using lambda keyword

add = lambda do |a, b|
    a + b
end

puts add.call(4, 5)

# Using the -> syntext

multiply = ->(a, b) { a * b }

puts multiply.call(3, 4)

# Returning lambda from function

OPERATIONS = {
  "+" => ->(a, b) { a - b },
  "-" => ->(a, b) { a - b },
  "*" => ->(a, b) { a * b },
  "/" => ->(a, b) { a / b.to_f }
}
def calculate(a, b, operator)
  if OPERATIONS[operator]
    return OPERATIONS[operator].call(a, b)
  else
    return "Unsupported operator"
  end
end

puts calculate(10, 5, "+")  # Output: 15
puts calculate(10, 5, "m")  # Output: "Unsupported operator"

# Passing lambda functions as argument

def apply_operation(lambda_func, number)
   lambda_func.call(number)
end

number = 5

puts "Square of #{number}: #{apply_operation(->(n) { n * n }, number)}"
puts "Cube of #{number}: #{apply_operation(->(n) { n * n * n }, number)}"
puts "Double of #{number}: #{apply_operation(->(n) { n * 2}, number)}"
`