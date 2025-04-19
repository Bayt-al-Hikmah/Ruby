# 1
colors = ["red", "green", "blue"]
puts "First color #{colors[0]}"
puts "Last color #{colors[-1]}"
colors.push("yellow")
colors.unshift("black")
last_color = colors.pop()
puts "Removed color #{last_color}"
puts "Green is in the color list #{colors.include?("green")}"

# 2
arr = [1, 2, 2, 3, 4, 4, 5] 
uniq_arr = arr.uniq!()
uniq_arr.delete_at(1)
uniq_arr.insert(2, 25)

# 3
numbers = [5, 3, 8, 1]
sorted_nmber = numbers.sort()