def check_prime(number)
  if number == 2
    return true
  else
    square_root = number ** 0.5
    limit = square_root + 1
    divisor = 2
    while divisor < limit
      if number % divisor == 0
        return false
      else
        divisor += 1
      end
    end
    return true
  end
end

number = 600851475143
divisor = 3
while divisor < number
  if number % divisor == 0 and check_prime(divisor)
    max_prime_factor = divisor
    number = number / divisor
  else
    divisor += 1
  end
end

puts number
