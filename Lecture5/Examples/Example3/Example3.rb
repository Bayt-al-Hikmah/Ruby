# Working with files

# Working with Metadata

# Checking if a file exist
puts File.exist?("output.txt")

# Getting size of file
puts File.size("output.txt") 

# Checking if it is a directory
puts File.directory?("my_folder")

# Check if it is a file
puts File.file?("output.txt")  

# Renaming file
File.rename("output.txt", "new.txt") 

# Deleting file
File.delete("new.txt") 