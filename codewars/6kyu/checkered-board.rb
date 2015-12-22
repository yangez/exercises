# http://www.codewars.com/kata/5650f1a6075b3284120000c0/train/ruby

def checkered_board(dimension)
  return false unless dimension.is_a? Integer
  return false if dimension < 2

  result = ""
  reverse = true if (dimension % 2 === 0);
  (1..dimension**2).each do |index|
    z = (reverse && is_odd(dimension, index)) ? 1 : 0
    result << ((index % 2 === z) ? "\u25A1" : "\u25A0")

    line_break = (row(dimension, index) != dimension ? "\n" : "")
    result << ((index % dimension === 0) ? line_break : " ")
  end
  result
end

def is_odd(dimension, index)
   row(dimension, index) % 2 != 0
end

def row(dimension, index)
  (1.0 * index / dimension).ceil
end

puts checkered_board(10)
