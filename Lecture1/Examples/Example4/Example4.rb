# Working with Arrays and hashes

# Creating array
colors = ["red", "green", "blue"]
puts colors[0] # we access value by index | result: red

mixed = [1, "hello", true] # array can have mixed types

# Creating hash
person = {
  name: "Alice",
  age: 30
}

puts person[:name] # we access value using the key

# Creating hash with string as keys
person = {
  "name" => "Alice",
  "age" => 30
}

puts person["name"] # we access value using the key

# Creating ranges

# Inclusive range
numbers = 1..5        # Includes 5
puts numbers.to_a     # result [1, 2, 3, 4, 5]


# Excludive range
numbers = 1...5       # Excludes 5
puts numbers.to_a     # result [1, 2, 3, 4, 5]


# Range for characters
letters = "a".."e"
puts letters.to_a     # result ["a", "b", "c", "d", "e"]