
#- Ask the user to enter a number `n`, and use an `until` loop to print all even numbers from 0 up to `n`.

# 1 
puts "Enter number to calculate its factorial"
n = gets.chomp.to_i
fact = 1
while n > 0
    fact *= n
    n -= 1
end
puts "Factorial is #{fact}"

# 2
puts "Enter first number"
first_number = gets.chomp.to_i
puts "Enter second number"
second_number = gets.chomp.to_i
for i in first_number..second_number
    next if i <= 1
    end_number = i ** 0.5
    prime = true
    for j in 2..end_number.to_i
        if i % j == 0
            prime = false
            break
        end
    end
    if prime
        puts i
    end
end

# 3
puts "Enter number "
num = gets.chomp.to_i
puts "Even numbers from 0 up to #{num} are :"
counter = 0
until counter > num
    puts counter 
    counter  += 2
    
    
end
