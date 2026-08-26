# Handling Errors

# Creating Costume Error

# We create class and make it inherite from StandardError
class OverdrawError < StandardError; end

def withdraw(balance, amount)
    if amount > balance
        raise OverdrawError, "Not enough money!"
    else
        puts "Withdrawing $#{amount}"
    end
end

begin
    withdraw(300, 200)
    withdraw(100, 200)
rescue OverdrawError => e
    puts "Custom error: #{e.message}"
end