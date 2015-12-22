# http://www.codewars.com/kata/5266876b8f4bf2da9b000362/train/ruby

# currently they have a bug with their Ruby tests, so this doesn't work correctly.
# JS version that works:

# function likes(names) {
# 	var subject;
#   if (names.length === 0) subject = 'no one';
#   if (names.length === 1) subject = names[0];
#   if (names.length === 2) subject = names[0] + " and " + names[1];
#   if (names.length === 3) subject = names[0] + ", " + names[1] + " and " + names[2];
#   if (names.length > 3) subject = names[0] + ", " + names[1] + " and " + (names.length-2).toString() + " others";
#   var like = (names.length <= 1) ? ' likes ' : ' like ';
#   return subject + like + "this"
# }

def likes(names)
  subject = 'no one' if names.length == 0
  subject = names[0] if names.length == 1
  subject = "#{names[0]} and #{names[1]}" if names.length == 2
  subject = "#{names[0]}, #{names[1]} and #{names[2]}" if names.length == 3
  subject = "#{names[0]}, #{names[1]} and #{names.length-2} others" if names.length > 3
  like = ((names.length <= 1) ? ' likes ' : ' like ')
  subject << like << "this"
end

puts likes ["Largo"]
