require 'prime'
require 'benchmark'

p Benchmark.measure {
  p Prime.take_while { |p| p < 2_000_000 }.inject(&:+)
}

def is_prime?(n)
  # Brute
  2.upto(Math.sqrt(n).to_i) do |x|
    return false if n % x == 0
  end

  true
end

p Benchmark.measure {
  p (2..2_000_000).each_with_object([]) { |i, a| a << i if is_prime?(i) }.inject(&:+)
}

