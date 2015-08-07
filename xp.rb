item = gets.to_i
num = gets.to_i
discount = 0.1

area = gets.chomp

tax = case area
when '東日本'
0.08
when '四国'
0.04
when '北海道'
0.0685
when '西日本'
0.0625
when '九州'
0.0825
end
result = ((item * num) * (1.00 - discount)) * (1.00 + tax)

puts result
