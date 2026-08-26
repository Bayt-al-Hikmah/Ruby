## Objectives
- Working with Files
- Metaprogramming in Ruby
## Working with Files
### Introduction
File handling is a fundamental part of programming. In Ruby, working with files allows us to store data permanently, read configuration files, save logs, or even build entire applications that depend on persistent storage.  
Ruby provides a simple and powerful way to handle files using its built-in `File` and `IO` classes. These classes let you create, read, write, and modify files with ease.  
There are three main operations we'll focus on:  
- **Reading** from files
- **Writing** to files
- **Managing** files (like deleting or renaming)
### Opening Files
To interact with a file, we first need to **open** it. Ruby uses the `File.open` method, which can be provided with different **modes** to specify how we want to interact with the file.
#### Common File Modes:
- `"r"`  Read-only (default). The file must exist.
- `"w"`  Write-only. Creates a new file or truncates an existing one.
- `"a"`  Append. Data will be written at the end of the file.
- `"r+"` Read and write.
- `"w+"` Read and write, truncating the file first.
- `"a+"` Read and write, appending to the file.

**Example: Opening a file for reading**
```ruby
file = File.open("example.txt", "r") 
puts file.read 
file.close
```
Always close the file after using it to free up system resources.
### Reading Files
We have many ways to read data from file:
- `read`: Reads the entire file.
- `readline`: Reads one line at a time.
- `readlines`: Reads all lines into an array.


**Example: Reading line by line**
```ruby
file = File.open("example.txt", "r")
file.each_line do |line|
  puts line
end
file.close
```
**Shortcut using a block (auto-closes the file):**
```ruby
File.open("example.txt", "r") do |file|
  file.each_line { |line| puts line }
end
```
### Writing to Files
To write to a file, we need first to open it in write (`"w"`) or append (`"a"`) mode. If the file doesn't exist, Ruby creates it automatically.
**Example: Overwriting a file**
```ruby
File.open("output.txt", "w") do |file|
  file.puts "Hello, world!"
end
```
**Example: Appending to a file**
```ruby
File.open("output.txt", "a") do |file|
  file.puts "Another line"
end
```
`puts` adds a newline, while `write` does not.
### File Existence and Metadata
Ruby lets us check file properties before interacting with them using the `File` class methods.
```ruby
puts File.exist?("output.txt")       # => true or false
puts File.size("output.txt")         # File size in bytes
puts File.directory?("my_folder")    # => true if it's a directory
puts File.file?("output.txt")        # => true if it's a file

```
### Deleting and Renaming Files
Ruby also allows us to **rename and delete files easily** using `File.rename` and `File.delete`.
```ruby
File.rename("old.txt", "new.txt")   # Rename a file
File.delete("unwanted.txt")         # Delete a file
```
## Metaprogramming in Ruby
### Introduction
Metaprogramming is one of Ruby’s most powerful and expressive features. It allows us to **write code that writes code**, meaning our Ruby programs can dynamically create methods, define classes, or even alter behavior while running.  
### Dynamic Method Creation
Ruby lets us define methods at runtime using metaprogramming techniques.
**Example: Using `define_method`**
```ruby
class Person
   def initialize(name, age)
      @name = name 
      @age = age    
    end
    # dynamic creation of setter and getter
   [:name, :age, :city].each do |attribute|
     define_method(attribute) do
       instance_variable_get("@#{attribute}")
     end
 
     define_method("#{attribute}=") do |value|
       instance_variable_set("@#{attribute}", value)
     end
   end
 end
 
 p = Person.new("Ali",45)
 p.name = "Alice"
 puts p.name  # => "Alice"
```
The `define_method` method takes a method name and a block containing its behavior. In this example, Ruby loops through `:name`, `:age`, and `:city` and dynamically creates both getter and setter methods for each attribute, reducing repetitive code.

In this example, `instance_variable_get("@#{attribute}")` retrieves the value of an instance variable dynamically, where `"@#{attribute}"` builds the variable name, such as `@name` or `@age`. On the other hand, `instance_variable_set("@#{attribute}", value)` dynamically creates or updates that instance variable with the given value. This allows Ruby to generate getter and setter methods for multiple attributes without repeating the same code.
### `method_missing` and `respond_to_missing?`
When we call a method that doesn’t exist, Ruby raises an error. But with metaprogramming, we can intercept that behavior using `method_missing`.  
**Example: Dynamic attribute handler**
```ruby
class DynamicPerson

  def initialize
    @attributes = {}
  end

  def method_missing(name, *args)
    if name.to_s.end_with?("=")
      @attributes[name.to_s.chop.to_sym] = args.first
    else
      @attributes[name.to_sym]
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    true
  end

end

dp = DynamicPerson.new

dp.name = "Bob"

puts dp.name  # => "Bob"
```
When Ruby encounters a method that does not exist, such as `dp.name` or `dp.name = "Bob"`, it automatically calls `method_missing`. The `name` parameter contains the missing method's name, while `*args` contains any arguments passed to it. If the method ends with `=`, the code treats it as a setter and stores the value in the `@attributes` hash. Otherwise, it treats it as a getter and retrieves the corresponding value. `respond_to_missing?` tells Ruby that these dynamically handled methods are supported.
### Defining Methods with `define_singleton_method`
Singleton Methods allow us to define a method for a specific object without adding the method to its class.    
**Example: Singleton method**
```ruby
dog = "Barky"

def dog.speak
  "Woof!"
end

puts dog.speak  # => "Woof!"

```
In this example, `dog.speak` creates a speak method that belongs only to the dog object. Other String objects will not have this method, making singleton methods useful when custom behavior is needed for one particular object.
### Class and Instance Introspection
Ruby allows us to inspect and manipulate classes and objects at runtime. This is especially useful for debugging or dynamically interacting with unknown objects.  
**Examples:**
```ruby
puts "Hello".class                   # => String
puts 5.instance_of?(Integer)         # => true
puts "text".respond_to?(:upcase)     # => true
puts Person.instance_methods(false)
```
- `.class` returns an object's class. 
- `instance_of?` checks whether an object is a direct instance of a specific class. 
- `respond_to?` checks whether an object can respond to a particular method. 
-`instance_methods(false)` returns the instance methods defined directly by a class, excluding methods inherited from its ancestors.
-`instance_methods` returns the instance methods defined directly by a class, including methods inherited from its ancestors.
### Opening and Modifying Existing Classes
In Ruby, we’re free to reopen any class even built-in ones and add or modify methods.
**Example: Add a method to `String`**
```ruby
class String
  def shout
    self.upcase + "!"
  end
end

text = "hello"
puts text.shout  # => "HELLO!"
```
In this example, we reopen the built-in `String` class and define a new `shout` method. The method uses `self.upcase` to convert the current string to uppercase and adds "!" to the end. As a result, every `String` object can now use the new `shout` method.
## Final Project
Using everything we’ve learned during this course, create a Ruby project that solves a problem you face in your daily life.  
Think about tasks you often repeat, information you want to organize, or anything you wish could be automated then build a solution using Ruby!