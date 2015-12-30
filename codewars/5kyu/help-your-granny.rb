# http://www.codewars.com/kata/5536a85b6ed4ee5a78000035/train/ruby


friends1 = ["A1", "A2", "A3", "A4", "A5"]
fTowns1 = [["A1", "X1"], ["A2", "X2"], ["A3", "X3"], ["A4", "X4"]]
distTable1 = Hash["X1", 100.0, "X2", 200.0, "X3", 250.0, "X4", 300.0]

def tour(friends, fTowns, distTable)
  # First, compute the circuit
  friends.map! do |friend|
    assoc = fTowns.select { |arr| arr[0] == friend }[0]
    assoc[1] if assoc
  end.compact!

  # Then, figure out the distances
  locations = friends.dup
  distances = locations.each_with_index.map do |loc, i|
    i == 0 ? distTable[loc] : Math.sqrt(distTable[loc]**2 - distTable[friends[i-1]]**2)
  end
  distances << distTable[friends[-1]]
  distances.reduce(:+).floor
end

p tour(friends1, fTowns1, distTable1)
