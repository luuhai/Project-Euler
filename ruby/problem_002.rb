x1 = 1
x2 = 2
s = 0
MAX_V = 4000000

while x2 < MAX_V
    s += x2 if x2 % 2 == 0
    x1,x2 = x2,x1 + x2
end

puts s
