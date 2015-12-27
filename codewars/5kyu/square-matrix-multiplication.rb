# http://www.codewars.com/kata/5263a84ffcadb968b6000513/train/ruby

a = [[1, 2], [3, 2]]
b = [[3, 2], [1, 1]]

# a = [[1, 2, 5],
#      [3, 2, 7],
#      [5, 4, 9]]

# b = [[3, 2, 5],
#      [1, 1, 5],
#      [2, 4, 3]]


# c = [[], [], []]

# (1*3)+(2*1)+(5*2), (1*2)+(2*1)+(5*4), (1*5)+(2*5)+(5*3)
# (3*3)+(2*1)+(7*2), (3*2)+(2*1)+(7*4), (3*5)+(2*5)+(7*3)

def matrix_mult(a, b)
  result = a.dup

  result.each_with_index.map do |row, row_index|
    row.each_with_index.map do |column, column_index|
      a_results = a[row_index]
      b_results = b.map { |val| val[column_index] }
      results = a_results.each_with_index.map { |val, index| val * b_results[index] }
      results.reduce(:+)
    end
  end
end


p matrix_mult(a, b)
