# Dummy Solution
square_of_sum = 0
sum_of_square = 0
(1..100).each do |i|
  sum_of_square += i**2
  square_of_sum += i
end
square_of_sum **= 2
puts square_of_sum - sum_of_square
