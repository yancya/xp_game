item = gets.to_i
num = gets.to_i
discount = 0.1
tax = 0.08
result = ((item * num) * (1.00 - discount)) * (1.00 + tax)

puts result
