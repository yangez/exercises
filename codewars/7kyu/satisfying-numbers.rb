# http://www.codewars.com/kata/55e7d9d63bdc3caa2500007d/train/ruby


def smallest(n)
  return 1 if (n == 1)

  # get top half of numbers
  half = (n/2+1).floor
  divisors = (half..n).to_a

  # increment potential number by n (largest number)
  # and check each increment to see if it can be divided by all previous numbers

  potential = n*(n-1)

  while(true) do
    break if divisors.all? {|n| potential % n == 0 }
    potential += n*(n-1)
  end

  # whichever one can, that's your number
  potential
end
