# http://www.codewars.com/kata/52217066578afbcc260002d0

def all_squared_pairs(num)

  # 1. create an array of squares
  i = 0; squares = []
  while ((current_square = i**2) <= num) do
    squares << current_square
    i+=1
  end

  # 2. check if num - squares equal any other value in the array
  result = squares.map do |square|
    val = num - square
    if Math.sqrt(val).floor**2 == val
      [Math.sqrt(square).to_i, Math.sqrt(val).to_i]
    end
  end.compact

  # 3. Cut off half of the results list
  result.empty? ? [] : result.each_slice((result.size/2.0).round).to_a[0]

end


p all_squared_pairs 2147483647
