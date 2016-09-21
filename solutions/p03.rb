require 'prime'

int = 600851475143

p int.prime_division.map { |i| i.first }.last

p (1..Math.sqrt(int)).select { |n| int % n == 0 && Prime.prime?(n) }.last
