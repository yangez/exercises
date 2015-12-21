# http://www.codewars.com/kata/cambridge-word-scramble

# Array version
def mix_words(string)
  return if !string.instance_of? String

  # Break string into array of different words
  randomized = string.split(" ").map do |word|
    if word.length <= 3 then word else

      word_array = word.split //

      # get existing punctuation
      punctuation = {}
      word_array.each_with_index do |item, index|
        if item.match /[[:punct:]]/
          punctuation[item] = index
          word_array.delete item
        end
      end

      # * remove first and last letters
      first = word_array.shift
      last = word_array.reverse!.shift

      # * scramble remaining letters until it doesn't equal original
      # unless there's only one letter in the word like "cool"
      original = word_array.reverse.join
      loop do
        word_array.shuffle!
        break if word_array.join != original || word_array.uniq.length == 1
      end

      # * add first and last letters back
      word_array.unshift first
      word_array << last

      # add punctuation back
      punctuation.each { |key, value| word_array.insert value, key }

      word_array.join

    end

  end

  randomized.join " "

end

# gsub version
def mix_words_gsub(string)
  # todo
end


puts mix_words("Let's do some cool stuff together at Eric's house!")
