# http://www.codewars.com/kata/is-my-friend-cheating/ruby

# n(n+1)/2 = a * b + a + b
# (-a)/(a+1) = b
def removNb(n)
  results = []
  (2..n).each do |a|
    b = (n*(n+1)/2.0-a)/(a + 1)
    results << [a, b.to_i] if b % 1 == 0 && b < n && b > 2
  end
  results
end

puts removNb(26)
