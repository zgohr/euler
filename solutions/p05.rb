
def divisible?(num, range)
  range.find { |n| num % n != 0 }.nil?
end

p (3000..2500000000).step(20).find { |n| divisible?(n, 19.downto(11)) }

# Uh, ruby can do lowest common multiples!
p (1..20).inject(:lcm)
