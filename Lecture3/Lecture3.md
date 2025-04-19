## Objectives
- Working with Methods
- Working with Modules
- Working with Gems
## Functions
### Introduction
A **method** is a reusable block of code designed to perform a specific task. Methods are fundamental to writing efficient and well-structured programs. By following the **DRY** (Don't Repeat Yourself) principle, methods help eliminate code duplication and promote cleaner code. They also make it easier to break down complex problems into smaller, manageable parts, resulting in code that is more organized, easier to understand, and simpler to maintain.
### Creating Methods
We create method by following those steps: 
1. Identify the code to reuse.
2. Choose a method name.
3. Decide what parameters it needs.
4. Define what it should return.
```
def say_hello   
	puts "Hello, user!" 
end  
say_hello
```
In Ruby, we define a method using the `def` keyword, followed by the method name. Inside the method, we write the code that should execute when the method is called. The method definition is closed using the `end` keyword.  
To call a method, simply use its name as shown above with `say_hello`.
### Method with Parameters
We can make a method accept arguments by adding parameters in parentheses after the method name in the definition. Parameters act as placeholders for the values (arguments) we pass when calling the method.  
We can also return a value from the method using the `return` keyword, followed by the value or variable we want to return.
```
def add_two_numbers(num1, num2)
	result = num1 + num2   
	return result 
end  
a = add_two_numbers(2, 3) 
puts a
```
### Default Parameters
We can make parameters optional by assigning them default values. If no argument is provided when calling the method, the default value will be used instead.
```
def say_hello(name = "user")
	puts "Hello #{name}" 
end  
say_hello 
say_hello("Mohamed")
```
### Variable Scope
**Scope** defines the region within a program where a particular variable or method can be accessed and utilized. Ruby primarily distinguishes between two main types of scope: **global scope** and **local scope**.
#### Global scope
Global scope represents the outermost level of a script. Any variable or constant defined outside of any class or module belongs to this global scope, and these are known as global variables (typically prefixed with a `$` like `$my_global_variable`) or global constants. Consequently, global variables and constants can be accessed and used from any part of the Ruby program, including within methods and blocks of code.
#### Local scope
Local scope restricts the accessibility of a variable or constant to the specific block of code where it is defined. When a variable is created within a method, for instance, it possesses local scope and is referred to as a local variable. These local variables are only visible and usable within the boundaries of that particular method and are not accessible from outside its definition.
```
def add_two_numbers(num1, num2)
	result = num1 + num2   
	return result 
end  
a = add_two_numbers(2, 3) 
puts a 
puts result  # Error: undefined local variable`
```
### Arbitrary Number of Parameters
We can design methods to accept a variable number of arguments by defining a special parameter that begins with an asterisk (`*`). When a method is called with multiple arguments corresponding to this starred parameter, Ruby gathers all those arguments and automatically stores them within an `Array`.
```
def say_hello(*names)
	names.each { |name| puts "Hello #{name}" } 
end  
say_hello("Mohamed", "Ahmed", "Ali")
```
We can also enable a Ruby method to accept an arbitrary number of key-value pair arguments by using a double splat operator (`**`) before a parameter name. This special parameter will collect all the keyword arguments passed to the method and store them in a `Hash`.
```
def say_hello(**names)
	names.each { |key, value| puts "Hello #{value}" } 
end  
say_hello(name1: "Mohamed", name2: "Ahmed", name3: "Ali")
```
### Passing Method as Argument
In Ruby, we can pass one method to another by converting it into a **Method object** using the `method` keyword. This allows the receiving method to call it later using `.call`. It's a simple and direct way to treat methods as data and reuse them dynamically.
```
def greet(name)
  puts "Hello, #{name}!"
end

def run_callback(callback, value)
  callback.call(value)
end

run_callback(method(:greet), "Ruby")
```
In this example, `method(:greet)` turns the method into an object that can be passed around. The `run_callback` method accepts this object and executes it with `.call`.
### Return Method 
In Ruby, methods can return **other methods** as objects. This is done by using the `method` keyword, which turns a method into a **Method object**. These returned Method objects can be stored in variables, passed to other methods, or called later using `.call`.
```
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

operation = get_operation("multiply")
puts operation.call(3, 4)  # Output: 12
```
- `get_operation` returns either `add` or `multiply` depending on the argument.
- The selected method is stored in `operation` and then used later.
### Recursive Methods
Recursive methods are special method that have ability to call theirself untill a condition (that we call base state) is valid.  
let's suppose we want to create a method that calculates the factorial of numbers  
we know that:
- 0! is equal to 1
- 1! is equal to 1 = 1\*0!
- 2! is equal to 2\*1 = 2\*1!
- 3! is equal to 3\*2\*1 = 3\*2!
- 4! is equal to 4\*3\*2\*1 = 4\*3!
- 5! is equal to 5\*4\*3\*2\*1 = 5\*4! 

with that in mind, we can set the base condition as if n == 0 we return 1,else we return n multiplied by the factorial of n-1 and so on
```
def factorial(n)   
	return 1 if n == 0   
	n * factorial(n - 1) 
	end  
puts factorial(5)
```
### Lambda Methods 
Anonymous functions, known as **lambda functions**, are useful when we want to create short, one-time-use functionality without defining a full method. In Ruby, we can create a lambda using the `lambda` keyword or the shorthand `->` syntax.  
To see how lambda functions are useful, let's say we want to define a behavior that takes two numbers and an operator, then performs a calculation based on that operator. Here's how we can do this using lambdas:
```
operations = {
  "+" => ->(a, b) { a + b },
  "-" => ->(a, b) { a - b },
  "*" => ->(a, b) { a * b },
  "/" => ->(a, b) { a / b.to_f }
}
def calculate(a, b, operator)
  if operations[operator]
    return operations[operator].call(a, b)
  else
    return "Unsupported operator"
  end
end

puts calculate(10, 5, "+")  # Output: 15
puts calculate(10, 5, "-")  # Output: 5
puts calculate(10, 5, "*")  # Output: 50
puts calculate(10, 5, "/")  # Output: 2.0
```
Here, we created a hash of lambda functions where each operator is mapped to a corresponding lambda. The `calculate` method then selects and calls the right lambda based on the operator passed.  
We can also send lambda function directly as argument without storing it in variable
```
def apply_operation(lambda_func, number)
    lambda_func.call(number)
end

number = 5

puts "Square of #{number}: #{apply_operation(->(n) { n * n }, number)}"
puts "Cube of #{number}: #{apply_operation(->(n) { n * n * n }, number)}"
puts "Double of #{number}: #{apply_operation(->(n) { n * 2}, number)}"
```
### Functional Programming Concepts
Functional programming breaks problems into smaller sub-problems, each solved by pure functions.  
Functional programming cover the following 5 concepts
#### Pure functions :
These functions respect the following :
- They always produce the same output for same arguments irrespective of anything else.
- They have no side-effects i.e. they do not modify any arguments or local/global variables or input/output.
- They have immutability. The pure function's only result is the value it returns. They are deterministic.
#### Recursive function :
Iteration in functional languages is implemented through recursion. Recursive functions repeatedly call themselves until they reach the base case.
#### First-Class functions and Higher-Order function :
First-class functions are dealt with as first-class variable. The first class variables can be passed to functions as parameter, can be returned from functions or stored in data structures. Higher order functions are the functions that take other functions as arguments and they can also return functions.
#### Referential transparency :
In functional programs variables, once defined don't change their value throughout the program. Functional programs do not have assignment statements. If we have to store some value, we define new variables instead. This eliminates any chances of side effects because any variable can be replaced with its actual value at any point of execution. State of any variable is constant at any instant.
#### Variables are Immutable :
In functional programming, we can't modify a variable after it's been initialized. We can create new variables but we can't modify existing variables, and this really helps to maintain state throughout the runtime of a program. Once we create a variable and set its value, we can have full confidence knowing that the value of that variable will never change.
## Modules
### Introduction
**Modules** in Ruby are a way to group together related methods, constants, and classes. They help organize code into reusable.
In addition to grouping reusable functionality, modules are also used to create **namespaces**, helping prevent name collisions between methods, classes, or constants from different parts of a program.
### Built-in Modules
Ruby comes with a rich set of **built-in modules** that provide useful functionality out of the box. These modules are part of Ruby's **standard library**, and we can use them without installing anything extra. Built-in modules help us perform common tasks such as mathematical operations, file handling, date and time manipulation, and more.
#### Using Built-in Modules
There is 2 type of builte in modules
1. **Core Modules** These are **always loaded** and available by default. We can use them **without requiring** anything, Examples:
	- `Math`
	- `Kernel`
	- `Comparable`
	- `Enumerable`
```
puts Math.sqrt(25)  # => 5.0
```
2. **Standard Library Modules** These are **part of Ruby**, but we **must explicitly `require`** them before use. Examples:
	- `Date`
	- `CSV`
	- `FileUtils`
	- `Set`
	- `Net::HTTP`
```
require 'date'

puts Date.today
```
### Creating Modules
We can create our own modules using the `module` keyword, followed by the module’s name written in **CamelCase**. Inside the module, we define the methods we want to group together ,we should use `self.` before each method name so we can call it using our module. We then end the module definition with the `end` keyword.
#### Example
Creating greeting module and save it as `greetings.rb`
```
module Greetings
  def self.say_hello(name)
    puts "Hello, #{name}!"
  end
end
```
Then to use the custom module, we first **require** the file where it is defined 
```
require './greetings'
Greetings.say_hello("Ali")
```
## Gems
### Introduction
**Gems** in Ruby are packaged libraries or tools that add reusable functionality to our programs. Each gem contains Ruby code along with optional files like documentation, tests, and executables. Gems allow developers to easily **share**, **distribute**, and **reuse** useful functionality across different applications.  
Gems can range from small utility libraries to full-featured frameworks like **Rails**. They help us avoid reinventing the wheel by letting uw leverage the work of the wider Ruby community.
### Built-in Gems
Ruby includes a set of **default gems** that are bundled with the Ruby installation. These gems provide powerful features without requiring us to install anything extra. They cover tasks such as working with JSON, file systems, networking, and more.
#### Using Built-in Gems
Just like standard library modules, some gems must be **required** before use, even if they are included by default.  
Examples:
- `json`
- `optparse`
- `pp` (pretty print)
- `benchmark`
- `open-uri`
```
require 'json'

data = { name: "Ali", age: 22 }
puts JSON.generate(data)
```
### Creating Gems
We can create our own gems to organize and share code across different projects. A gem wraps your functionality inside a clean, versioned, and reusable structure.  
To create a gem:
1. First we run the following command to generate the skeleton:
```
bundle gem my_gem
```    
2. This will create a folder structure like:
```
my_gem/
├── lib/
│   └── my_gem.rb
├── my_gem.gemspec
└── ...
```
3. Inside `lib/my_gem.rb`, we define our module and methods:
```
module MyGem
  def self.say_hello(name)
    puts "Hello, #{name}!"
  end
end
```

To use our custom gem locally:
1. We should build and install the gem:
```
gem build my_gem.gemspec
gem install ./my_gem-0.1.0.gem
```
    
2. Then we require it in our script:
```
require 'my_gem'
MyGem.say_hello("Ali")
```
### Installing Third-Party Gems
Ruby provides a built-in tool called `gem` to install and manage third-party gems. These gems are hosted on [RubyGems.org](https://rubygems.org), which is the central repository for Ruby libraries.  
If we want install a gem, we use the `gem install` command followed by the gem name:
```
gem install httparty
```
Once installed, we can use the gem in our Ruby script by requiring it:
```
require 'httparty'

response = HTTParty.get('https://api.github.com')
puts response.body
```
## Tasks
### Task 1
Create a Ruby method that tests whether a given number is a prime number or not.
### Task 2
Write a Ruby method that converts a decimal number to its binary representation using recursion.
### Task 3
- Define a method `log_message(msg, filter = nil)` that:
    - Accepts a string message.
    - Accepts an optional filter lambda.
    - If a filter is given, it modifies the message before logging.
    - Otherwise, it logs the message as-is.
- Create a few filters as lambdas:
    - `timestamp_filter`: adds current time before the message.
    - `upcase_filter`: converts message to uppercase.
    - `emoji_filter`: adds a smiley emoji after the message.
#### Hint
Use `Time.now` to get the current time.
### Task 4
- Create a gem called `text_utils` that contains a module `TextUtils`.
- Inside the module, define a method `camel_case(str)` that converts a string like `"hello world"` into `"HelloWorld"`.
- Build and install your gem locally.
- Write a Ruby script that:
    - Requires the gem.
    - Uses `TextUtils.camel_case("make ruby awesome")` and prints the result.
bundle gem text_utils
gem build text_utils.gemspec
gem install ./text_utils-0.1.0.gem