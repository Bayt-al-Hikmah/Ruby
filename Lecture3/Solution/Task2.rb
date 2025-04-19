def toBin(n)
    if n == 0
        return 0
    end
    return n % 2 + 10 * toBin(n / 2)
end

puts "7 on binary : #{toBin(7)}"
puts "10 on binary : #{toBin(10)}"
puts "2 on binary : #{toBin(2)}"