require 'benchmark'

triangles = Enumerator.new do |y|
  i = 1
  loop do
    y.yield i * (i + 1) / 2
    i += 1
  end
end

def number_of_factors_of(n)
  m = Math.sqrt(n)
  # counting happens to be much faster than storing each result and counting
  # later
  guess = (1..m).count { |i| n % i == 0 }
  # ... if n is a perfect square, don't count it twice
  guess -= 1 if n == m*m
  # double it (because of sqrt)
  guess * 2
end

Benchmark.measure {
  p triangles.find { |n| number_of_factors_of(n) > 500 }
}
