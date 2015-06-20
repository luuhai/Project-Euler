l1 = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
l2 = ['ten', 'eleven', 'twelve', 'thirdteen', 'forteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
l3 = ['twenty', 'thirdty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

def len_one(n)
  l1 = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  if n == 0
    return ''
  else
    return l1[n-1]
  end
end

def len_two(n)
  l2 = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  l3 = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  if n < 20
    return l2[n%10]
  else
    return l3[n/10 - 2] + len_one(n%10)
  end
end

def len_three(n)
  l1 = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  if n%100 >= 10
    return l1[n/100 - 1] + 'hundredand' + len_two(n%100)
  elsif n%100 == 0
    return l1[n/100 - 1] + 'hundred'
  else
    return l1[n/100 - 1] + 'hundredand' + len_one(n%100)
  end
end

def len_four(n)
  return 'onethousand'
end

def num_len(n)
  if n.to_s.length == 1
    puts len_one(n)
    return len_one(n).length
  elsif n.to_s.length == 2
    puts len_two(n)
    return len_two(n).length
  elsif n.to_s.length == 3
    puts len_three(n)
    return len_three(n).length
  else
    puts len_four(n)
    return len_four(n).length
  end
end

s = 0
1.upto(1000) do |x|
  s += num_len(x)
end
puts s
