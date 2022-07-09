#x = "The quick brown fox jumped over the lazy dog"

#p x

#String interpolation

#puts "Name an animal"
#animal = gets.chomp

#puts "Name a noun"
#noun = gets.chomp

#p "The quick brown #{animal} jumped over the #{noun} goose."

#String manipulation
capitalise = "cycling"

p capitalise.upcase
p capitalise.reverse
p capitalise.downcase
p capitalise.swapcase
# Method chaining
p capitalise.upcase.reverse

#When doing searches remember to use upcase or downcase to search for the right letter combination

search = "DucK"

p search
p search.downcase

# String Substitution

p str = "the quick brown bear jumped over the lazy dog"

p str.sub "brown","pink"

p str.gsub "the", "that"

p str.gsub! "the", "that" #Use ! (bang to make a permanent change) - use sparingly

p str

# Strip and Split

p phrase = "The     quick cyclist cycled  up the steep hill with ease.      "
p phrase.strip #To remove the blank space at the end.
p phrase.split #to split a string into an array
p phrase.split.size
p phrase.split(//).size #number of chars
p phrase.split(//) # to see all the letters




