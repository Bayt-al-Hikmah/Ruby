# Working with Arrays

# Creating array

colors = ["red", "green", "blue"] 
numbers = [1, 2, 3, 4, 5] 
mixed = ["hello", 42, true]

# Accessing Elements in an Array

puts colors[0]   # result "red" 
puts colors[1]   # result "green" 
puts colors[2]   # result "blue"
puts colors[10]  # result nil
# Negative index
puts colors[-1]  # result "blue" | last element

# Accessing Subarrays

numbers = [10, 20, 30, 40, 50] 
puts numbers[1..3]  # result [20, 30, 40] | from index 1 to index 3 included
puts numbers[1, 2]  # result [20, 30,] | from index 1 take 2 elements


# Array Methods

colors = ["red", "green", "blue"] 
puts colors.length                # result 3 | return the number elements

colors.unshift("black")           # result ["black", "red", "green", "blue"] | inserts an element at the start

colors.push("yellow")             # result ["black", "red", "green", "blue", "yellow"] | adds an element to the end
colors << "purple"                # result ["black", "red", "green", "blue", "yellow", "purple"] | adds an element to the end

colors = ["red", "green", "blue"] 
colors.insert(2, "black")         # result ["red", "green", "black", "blue"] | adds an element at the given index

first_color = colors.shift        # result ["green", "black", "blue"] | removes and returns the first element
puts first_color                  # result "red"

last_color = colors.pop           # result ["green", "black"] | removes and returns the last element
puts last_color                   # result "blue"

arr = [1, 2, 3, 2, 4]
arr.delete(2)                     # result [1, 3, 4] | removes all occurrences of value

arr = [1, 7, 9, 2]
arr.delete_at(1)                  # result [1, 9, 2] | removes the element at the given index.

names = ["Ali", "Alex", "Ali", "Alice"]
names.uniq!                       # result ["Ali", "Alex", "Alice"] | removes duplicate values.

colors = ["red", "green", "blue"] 
puts colors.include?("green")     # result true | checks if the array contains a value

reversed = colors.reverse         # result  ["blue", "green", "red"] | returns a new array with the order reversed

numbers = [3, 1, 5, 2] 
puts numbers.sort                 # result [1, 2, 3, 5] | sorts the array 

puts colors.join(", ")            # result "red, green, blue" | combines array elements into a single string