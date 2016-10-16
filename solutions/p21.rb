
def divisors_of(n)
  (1..n-1).select { |i| n % i == 0 }
end

def sum_divisors(n)
  divisors_of(n).inject(:+)
end

amicables = []
i = 1

while i <= 10_000
  i += 1
  # a
  sum_i = sum_divisors(i)
  next if sum_i.nil?
  # b
  sum_sum_i = sum_divisors(sum_i)
  next if i == sum_i
  amicables.concat([sum_sum_i, sum_i]) if sum_sum_i == i
end

p amicables.uniq.inject(:+)
