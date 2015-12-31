# http://www.codewars.com/kata/51675d17e0c1bed195000001/train/ruby

def solution(digits)
  largest = 0
  # return digits if digits.length < 6
  (5..digits.length).each do |index|
    largest = ((potential = digits.to_s[index-4..index].to_i) > largest) ? potential : largest
  end
  largest
end


def better_solution(digits)
  digits.split('').each_cons(5).max.join.to_i
end


p better_solution("19284305182");
