# Handling Errors

# Raising Errors

def withdraw(balance, amount)
  if amount > balance
    raise "Insufficient funds" # raise error to the runtime
  else
    puts "Withdrawing $#{amount}"
  end
end

begin
    withdraw(100, 50) 
    withdraw(100, 150)
rescue StandardError => e
    puts "An error occurred: #{e.message}"
ensure
    puts "Execution complete."
end

