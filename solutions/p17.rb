def word(i)
  words = {
    '0' => '',
    '1' => 'one',
    '2' => 'two',
    '3' => 'three',
    '4' => 'four',
    '5' => 'five',
    '6' => 'six',
    '7' => 'seven',
    '8' => 'eight',
    '9' => 'nine',
    '10' => 'ten',
    '11' => 'eleven',
    '12' => 'twelve',
    '13' => 'thirteen',
    '14' => 'fourteen',
    '15' => 'fifteen',
    '16' => 'sixteen',
    '17' => 'seventeen',
    '18' => 'eighteen',
    '19' => 'nineteen',
    '20' => 'twenty',
    '30' => 'thirty',
    '40' => 'forty',
    '50' => 'fifty',
    '60' => 'sixty',
    '70' => 'seventy',
    '80' => 'eighty',
    '90' => 'ninety',
  }

  if i < 20
    words[i.to_s]
  elsif i < 100
    chars = i.to_s.chars
    ones = chars[-1]
    tens = (chars[0].to_i * 10).to_s
    return words[tens] + words[ones]
  elsif i < 1000
    chars = i.to_s.chars
    hundreds = chars[0]
    tens_str = word(chars[1..2].join.to_i)
    tens_str = tens_str.empty? ? '' : 'and' + tens_str
    return words[hundreds] + 'hundred' + tens_str
  else
    return 'onethousand'
  end
end

p (1..1000).map { |n| word(n).length }.inject(:+)
