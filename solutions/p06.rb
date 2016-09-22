
sum_squares = (1..100).map { |n| n*n }.inject(&:+)

square_sum = (1..100).inject(&:+) ** 2

p square_sum - sum_squares
