# 1
puts "Enter number to test"
n = gets.chomp.to_i
if n % 2 == 0
    puts "#{n} is even"
else
    puts "#{n} is odd"
end

# 2
puts "Enter your grade"
grade = gets.chomp.to_f
if grade >= 80
    puts "Your grade is A+"
elsif grade >= 75
    puts "Your grade is A"
elsif grade >= 70
    puts "Your grade is A-"
elsif grade >= 65
    puts "Your grade is B+"
elsif grade >= 60
    puts "Your grade is B"
elsif grade >= 55
    puts "Your grade is B-"
elsif grade >= 50
    puts "Your grade is C+"
elsif grade >= 45
    puts "Your grade is C"
elsif grade >= 40
    puts "Your grade is D"
else
    puts "Your grade is F"
end

# 3
puts "Now using case statement"
case grade
when 80..100
    puts "Your grade is A+"
when 75.79
    puts "Your grade is A"
when 70..74
    puts "Your grade is A-"
when 65..69
    puts "Your grade is B+"
when 60..64
    puts "Your grade is B"
when 55..59
    puts "Your grade is B-"
when 50..54
    puts "Your grade is C+"
when 45..49
    puts "Your grade is C"
when 40..44
    puts "Your grade is D"
else
    puts "Your grade is F"
end

# 4
puts "Enter temperature"
temperature = gets.chomp.to_f
if temperature > 30
    puts "Wear shorts"
elsif temperature >= 20
    puts "T-shirt weather"
else
    puts "Bring a jacket"
end
