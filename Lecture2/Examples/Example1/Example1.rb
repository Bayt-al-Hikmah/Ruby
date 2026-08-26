# Working with Strings

# Creating string

name = "Alice"
greeting = 'Hello, world!'

# Accessing characters

puts name[0]   # result "A"
puts name[10]  # result nil
# Negative index
puts name[-1]  # result e

# Accessing Substrings

word = "Programming" 
puts word[0..4]  # result "Progr" | from index 0 to index 4 included
puts word[1, 5]  # result "rogra" | from index 1 take 5 characters

# String Methods

text = "I like ruby" 
puts name.length                # result 5 | return the number of characters

puts "hello".upcase             # result "HELLO" | transform to upper case
puts "WORLD".downcase           # result "world" | transform to lower case

puts "   hello   " .strip       # result "hello" | remove extra whitespace

puts text.include?("ruby")      # result true | check if it include sub string

puts "Hello, " + "Alice"        # result "Hello, Alice" | add two string together

puts text.gsub("ruby", "java")  # result "I like java" | replace ruby with java

words = "apple,banana,orange" 
puts words.split(",")           # result ["apple", "banana", "orange"] | split string into array based on character