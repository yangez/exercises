# http://www.codewars.com/kata/5650ab06d11d675371000003/train/ruby

def split_in_parts (s, part_length)
  # split array into pieces, greedily grab remaining characters
  array = s.scan /.{1,#{part_length}}/

  # rejoin into string and insert space in between each piece
  array.join(" ")
end

puts split_in_parts("awesomesauce", 5)
