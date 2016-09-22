
prime_numbers = [2, 3]
result = prime_numbers.last

n = 10_001

# Et tu, Brute?
while n > prime_numbers.length
  result += 2

  # Prime if its not divisible by any other smaller prime
  prime_numbers.push(result) unless prime_numbers.any? { |p| result % p == 0 }
end

p prime_numbers[n-1]
