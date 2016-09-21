
palindrome = 0

999.downto(900).each do |a|
  999.downto(900).each do |b|
    product = a*b
    str = product.to_s
    reversed = str.reverse
    palindrome = product if str == reversed && product > palindrome
  end
end

p palindrome
