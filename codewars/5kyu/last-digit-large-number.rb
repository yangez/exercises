# http://www.codewars.com/kata/last-digit-of-a-large-number

# Take last digit of the first number,
# then continmually multiply the last digit by itself and take the last digit of that.
# powers repeat every 4, so take the modulus of b by 4 and repeat that many times.
def last_digit(a, b)
  return (b==0) ? 1 : a**(b%4+4) % 10
end

puts last_digit(124, 8)

  # (b%4).times do
  #   current += a
  #   # current = current.to_s[-1, 1].to_i
  #   # current *= a
  # end

# 2: every 4
# 3: every 4
# 4: every 4
# 5: every 4
# 6: every 4
# 7: every 4
