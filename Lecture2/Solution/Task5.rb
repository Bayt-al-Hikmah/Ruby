puts "Enter a"
a = gets.chomp.to_f
puts "Enter b"
b = gets.chomp.to_f
puts "Enter c"
c = gets.chomp.to_f
d = b * b - 4 * a * c
if a == 0 && b != 0
    x = -c / b
    puts "Solution is #{x}"
elsif a == 0 && b == 0
    puts "There is no solution"
elsif d == 0
    x = -b / (2 * a)
    puts "Solution is #{x}"
elsif d > 0
    x1 = (-b - d ** 0.5) / (2 * a)
    x2 = (-b +  d ** 0.5) / (2 * a)
    puts "Solution is"
    puts "x1: #{x1}"
    puts "x2: #{x2}"
else
    puts "There is no solution"
end
