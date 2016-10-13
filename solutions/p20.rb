
def factorial_digit_sum(n)
  n.downto(1).inject(:*).to_s.chars.map(&:to_i).inject(:+)
end

p factorial_digit_sum(100)
