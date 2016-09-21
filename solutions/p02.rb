
fib = [1, 2]

index = 2
sum = 2

while true
  fib[index] = fib[index-1] + fib[index-2]
  break if fib[index] >= 4000000
  sum += fib[index] if fib[index] % 2 == 0
  index += 1
end

p sum
