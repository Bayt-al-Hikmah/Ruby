# Working with files

# Reading file

# Reading all the file
file = File.open("example1.txt", "r") # r for read
puts file.read                       # reads the whole file
file.close 

# Reading line from the file
file = File.open("example2.txt", "r")    # r for read
puts file.readline                       # reads single line
file.close 

# Looping over all the lines
file = File.open("example2.txt", "r")    # r for read
lines = file.readlines                    # reads all lines and store them as array
file.close 

for line in lines
    puts line
end

# We can also loop over all lines using
file = File.open("example2.txt", "r")
file.each_line do |line|
  puts line
end
file.close

# We can also use
File.open("example1.txt", "r") do |file|
  file.each_line { |line| puts line }
end