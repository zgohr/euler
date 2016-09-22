product = nil

(1..1000).each do |a|
  (a..1000).each do |b|
    c = 1000 - a - b
    if a**2 + b**2 == c**2
      product = a*b*c
      break
    end
    break unless product.nil?
  end
end

p product
