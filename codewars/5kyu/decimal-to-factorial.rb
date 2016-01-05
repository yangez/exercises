# http://www.codewars.com/kata/54e320dcebe1e583250008fd

@letters = ('A'..'Z').to_a
def fact(num)
  (1..num).inject(:*) || 1
end
def code(multiple)
  multiple <= 9 ? multiple : @letters[multiple-10]
end
def decode(char)
  @letters.find_index(char) ? @letters.find_index(char) + 10 : char.to_i
end

# Time complexity:
# Space complexity:
def dec2FactString(nb)
  facts = []
  current = 1
  while nb > (fact = fact(current)) do # QUESTION: is this O(logn) or O(n)?
    facts << fact
    current += 1
  end

  result = []
  facts.reverse_each do |factorial|
    multiple = (nb/factorial).floor
    nb -= multiple*factorial
    result << code(multiple)
  end
  result.push(0).join
end


# Time complexity: O(n)
# Aux space complexity: O(n)
def factString2Dec(str)
  str.split(//).reverse.each_with_index.inject(0) { |sum, (val, index)| sum + (decode(val) * fact(index)) }
end

p dec2FactString(37199332678990121746799944815083519910)
p factString2Dec("49bs0koh76nmlkjihgfedcba9876511000")
