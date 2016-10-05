pyramid = [
%w(75),
%w(95 64),
%w(17 47 82),
%w(18 35 87 10),
%w(20 04 82 47 65),
%w(19 01 23 75 03 34),
%w(88 02 77 73 07 63 67),
%w(99 65 04 28 06 16 70 92),
%w(41 41 26 56 83 40 80 70 33),
%w(41 48 72 33 47 32 37 16 94 29),
%w(53 71 44 65 25 43 91 52 97 51 14),
%w(70 11 33 28 77 73 17 78 39 68 17 57),
%w(91 71 52 38 17 14 91 43 58 50 27 29 48),
%w(63 66 04 68 89 53 67 30 73 16 69 87 40 31),
%w(04 62 98 27 23 09 70 98 73 93 38 53 60 04 23),
]

pyramid = pyramid.map { |row| row.map(&:to_i) }.reverse

pyramid.each_with_index do |row, row_index|
  next if row_index == 0
  next_row_index = row_index-1

  row.each_with_index do |value, value_index|
    max = [pyramid[next_row_index][value_index],
           pyramid[next_row_index][value_index+1]].max
    row[value_index] = value + max
  end

end

p pyramid.reverse[0][0]

