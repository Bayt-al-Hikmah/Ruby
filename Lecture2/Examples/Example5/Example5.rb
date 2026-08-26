# Conditional Statements

# Single Condition with `if`

age = 18

if age >= 18 
    puts"You are an adult."
end

# Alternative Path with `else`

is_raining = false

if is_raining 
    puts"Bring an umbrella."
else
    puts"No umbrella needed today."
end

# Multiple Conditions with `elseif`

score = 85
if score >= 90 
    puts"Excellent performance"
elsif score >= 80 
    puts"Good job"
else
    puts"Room for improvement"
end

# Case statement

day = "Monday"

case day
    when "Monday"
        puts "Weekday 1"
    when "Tuesday"
        puts "Weekday 2"
    when "Saturday", "Sunday"
        puts "Weekend!"
    else
        puts "Unknown day"
end