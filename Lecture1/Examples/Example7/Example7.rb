# User Input

# Reading string

puts "What's your name?"
name = gets # capture the new line
puts "Nice to meet you, #{name}!"

puts "What's your middle name?"
name = gets.chomp # remove the new line
puts "Your middle name is #{name}!"

# Reading numbers
puts "Enter your age:"
age = gets.chomp.to_i  # convert the string to integer
puts "In 5 years, you’ll be #{age + 5} years old!"