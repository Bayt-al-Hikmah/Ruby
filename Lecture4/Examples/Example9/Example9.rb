# Handling Errors

# Catching Runtime Errors

begin
    puts "Enter first number: "
    num1 = gets.chomp.to_i
    puts "Enter Second number: "
    num2 = gets.chomp.to_i
    puts "result: #{num1 / num2}"
rescue ArgumentError => e
    puts "Invalid input! Please enter a valid number."
    puts "Error details: #{e.message}"
rescue StandardError => e
    puts "An error occurred: #{e.message}"
ensure
    puts "Execution complete."
end