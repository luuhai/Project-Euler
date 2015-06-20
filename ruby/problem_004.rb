def check_palindrome(number)
  return number.reverse == number
end

min_factor = 100
max_factor = 999
result = 0

for i in (min_factor..max_factor)
  for j in (min_factor..max_factor)
    product = i * j
    if check_palindrome(product.to_s) and product > result
      result = product
    end
  end
end

puts result
