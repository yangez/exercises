# http://www.codewars.com/kata/561e9c843a2ef5a40c0000a4/train/ruby


# starting at m if odd or m+1 if even, iterate up and check for primality.
# If number is prime, check if i+g is prime as well.
# If there's no intermediate primes, return result
def gap(g, m, n)
  (m..n).each do |i|
    next unless is_prime(i)
    return [i, i+g] if is_prime(i+g) && (i+1..i+g-1).none? { |num| is_prime num }
  end
  nil
end

def is_prime(n)
  (2..Math.sqrt(n).round).each { |i| return false if n % i == 0 }
  true
end

puts gap(2,100,110)


# Method that first calculates all primes. inefficient
def gap_naive(g, m, n)
  # find prime numbers up to n
  primes = (2..n).to_a
  primes.each do |x|
    primes.reject! { |y| y % x == 0 if y != x }
  end

  # foreach prime number in the array, hash { gap => pair } if it doesn't already exist, and if it's above m
  table = {}
  primes.each_with_index do |value, index|
    next if value < m
    next_value = primes[index+1]
    table[next_value - value] ||= [value, next_value] if next_value
  end

  # get value of g from hash
  table[g]

end
