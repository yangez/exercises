# http://www.codewars.com/kata/cambridge-word-scramble

def mix_words(string)
  return if !string.instance_of? String

  # Break string into array of different words
  randomized = string.split(" ").map do |word|
    if word.length <= 3 then word else

      # * remove first and last letters
      word_array = word.split //
      first = word_array.shift
      last = word_array.reverse!.shift

      original = word_array.reverse.join

      # * scramble remaining letters until it doesn't equal original

      loop do
        word_array.shuffle!
        break if word_array.join != original || word_array.uniq.length == 1
      end

      # * add first and last letters back
      word_array.unshift first
      word_array << last

      word_array.join

    end

  end

  randomized.join " "

end

puts mix_words("hello world awesomesauce")
