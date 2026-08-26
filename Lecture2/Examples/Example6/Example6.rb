# Working with loops

# while loop

count = 1
while count <= 5 do
    puts "Count is #{count}"
    count += 1
end

# until loop

count = 1  
until count > 5   
	puts "Count is #{count}"   
	count += 1 
end

# for loop

for i in 1..3   
	puts "Iteration #{i}" 
end

# Loop over array

fruits = ["apple", "banana", "cherry"]  
for fruit in fruits   
	puts fruit 
end

# loop over aarry with .each

colors = ["red", "green", "blue"]

colors.each do |color|
  puts "Color: #{color}"
end

# Loop over hash

person = { name: "Alice", age: 30 }

person.each do |key, value|
  puts "#{key}: #{value}"
end

# infinity loop

counter = 1
loop do
  puts "Looping: #{counter}"
  counter += 1
  break if counter > 3 # without this it will never stop
end

# Jump step with next

for i in 1..5
  next if i == 3
  puts i
end
# we can also use
for i in 1..5
  if i == 3
	  next
  end
  puts i
end

# Exit loop with break

for i in 1..5
  break if i == 4
  puts i
end
# we can also use 
for i in 1..5
  if i == 4
     break
  end 
  puts i
end