def binomial_coefficient(n, k)
  # n! / (k! * (n-k)!)
  # (n! / (n-k!)) / k!
  (1+n-k..n).inject(:*)/(1..k).inject(:*)
end

p binomial_coefficient(4, 2)
p binomial_coefficient(40, 20)
