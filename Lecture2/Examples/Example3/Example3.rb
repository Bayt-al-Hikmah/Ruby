# Working with Hashes

# Creating Hashes

# Using strings as keys
person1 = {   
    "name" => "Alice",   
    "age" => 30 
} 

# Using symboles as key s
person2 = {   
    name: "Alice",   
    age: 30 
}

# Accessing Hash Values

person = { 
    name: "Alice", 
    age: 30 
}  
puts person[:name]  # result "Alice" 
puts person[:age]   # result 30`
puts person[:email] # result nil

# Adding or Updating Entries

person[:email] = "alice@example.com" # adding email to the hashe
person[:age] = 31                    # updating the value for age
person.store(:city, "London")        # adding key value using .store method

# Hashes Methods

puts person.keys               # result [:name, :age, :email, :city] | return all keys
puts person.values             # result ["Alice", 31, "alice@example.com", "London"] return all values

person.delete(:email)          # remove the key value pair

person.clear                   # result {} | remove all the key values

puts person.key?(:name)        # result true | check if it has a specific key
puts person.include?(:age)     # result true | check if it has a specific key

puts person.value?("Alice")    # result true | check if it has a specific value

defaults = { font: "Arial", size: 12 } 
settings = { size: 14 , spacing: 5}  
puts defaults.merge(settings)   # result { font: "Arial", size: 14, :spacing: 5 } | combine two hashes and return new one, if both have same key use value from the new one
