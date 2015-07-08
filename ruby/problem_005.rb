# This is not my own solution. It's the solution from Project Euler page's problem overview.

prime_list = [2, 3, 5, 7, 11, 13, 17, 19]
result = 1

prime_list.each do |p|
  result *= p ** ((Math.log(20)/Math.log(p)).floor)
end

puts result
