item = gets.to_i
num = gets.to_i
discount = 0.1

area = gets.chomp

tax = case area
when '東日本'
0.08
end
result = ((item * num) * (1.00 - discount)) * (1.00 + tax)

puts result
