# http://www.codewars.com/kata/520b9d2ad5c005041100000f/train/ruby

def pig_it(text)
  text.split(" ").map do |x|
    if (x =~ /[[:punct:]]/)
      x
    else
      string = "#{x}#{x[0]}ay";
      string.slice!(0);
      string
    end
  end.join(" ")
end

# There is a better and cleaner gsub way!
def pig_it_gsub(text)
  text.gsub(/(\w)(\w+)*/) { "#{$2}#{$1}ay"}
end

p pig_it_gsub("Hello this is the world!")
