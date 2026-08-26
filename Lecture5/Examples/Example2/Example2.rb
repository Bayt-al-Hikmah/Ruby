# Working with files

# Writing to file

File.open("output.txt", "w") do |file| # w for write
  file.puts "Hello, world!"
end

File.open("output.txt", "a") do |file| # a for append
  file.write "Another line"
end