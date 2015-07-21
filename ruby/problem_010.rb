def sieve(maximum)
  list_of_number = (2..maximum).to_a
  list_of_non_prime = Array.new
  square_root = (maximum ** 0.5).ceil

  (2..square_root).each do |x|
    (2..(maximum/x)).each do |y|
      list_of_non_prime.push(x*y)
    end
  end

  return (list_of_number - list_of_non_prime)
end

def sum(list_of_number)
  sum = 0
  list_of_number.each do |element|
    sum += element
  end
  return sum
end

puts sum(sieve(2000000))
