chain_size = 0
chain_term = nil

(1..999_999).each do |i|
  val = i
  terms = 1
  while val != 1
    terms += 1
    if val.even?
      val = val / 2
    else
      val = val*3 + 1
    end
  end
  if terms > chain_size
    chain_size = terms
    chain_term = i
  end
end

p chain_size, chain_term
