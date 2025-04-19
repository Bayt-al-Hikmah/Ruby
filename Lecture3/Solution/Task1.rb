def is_prime(num)
    return false if num == 0 || num == 1
    return true if num == 2
    n = Math.sqrt(num)
    for i in 2..n
        if num % i == 0
            return false
        end
    end
    return true
end

puts "2 is prime #{is_prime(2)}"
puts "7 is prime #{is_prime(7)}"
puts "21 is prime #{is_prime(21)}"