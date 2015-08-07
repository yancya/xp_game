# coding: utf-8
item = gets.tap { |str| raise '不正' if str.chomp.match /[^\d]/ }.to_i
num = gets.tap { |str| raise '不正' if str.chomp.match /[^\d]/ }.to_i
discount = case (item * num)
           when -> (n) { n >= 50_000 }
             0.15
           when -> (n) { n >= 10_000 }
             0.1
           when -> (n) { n >= 7_000 }
             0.07
           when -> (n) { n >= 5_000 }
             0.05
           when -> (n) { n >= 1_000 }
             0.03
           else
             0
           end

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
else
  raise '不正'
end

result = ((item * num) * (1.00 - discount)) * (1.00 + tax)

puts <<-RESULT
商品金額: #{item}
個数: #{num}
地域: #{area}
合計金額: #{result.round.to_s.chars.reverse.each_slice(3).map(&:join).join(',').reverse} 円
RESULT









