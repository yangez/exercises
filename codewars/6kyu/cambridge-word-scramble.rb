def mix_words(string)
  return if !string.instance_of? String

  # Break string into array of different words
  randomized = string.split(" ").map do |word|
    # Checks that string is more than 3 letters, if not just return string

    # * remove first and last letters
    word_array = word.split //
    first = word_array.shift
    last = word_array.reverse!.shift

    # * scramble remaining letters
    word_array.shuffle!

    # * add first and last letters back
    word_array.unshift first
    word_array << last

    word_array.join

    # check that string isn't the original string
  end

  randomized.join " "

end

puts mix_words("hello world awesomesauce lol")
