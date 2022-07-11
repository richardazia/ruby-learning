i = 0

while i < 10
  puts "Hey there"
  i += 1
end

arr = [23, 34, 56, 12, 34, 18, 00]

#standard loop
arr.each do |i|
  p i
end

# One liner
arr.each {|i | p i }

p "the loop"

for i in 0..42
  p i
end

#Nested iterator
#

photos = {
  "Combine Harvester" => {
    "title" => "A Combine Harvester",
    "location" => "A field",
    "weather" => "sunny",
  },
  "Mont Blanc" => {
    "title" => "Mont Blanc As Seen From Crans",
    "location" => "Crans",
    "weather" => "Sunny and warm",
  }
}

photos.each do |photo, weather|
  puts photo
  # This doesn't work as I want it to, yet. I want to display the weather on that day.
  weather.each do |photos, weather|
    p "The weather in this #{photo} photo is #{weather}"
  end
end

# The Select Method
#
# Only grab the even numbers
x = 0

# Multiline version
(1..10).to_a.select do|x|
  p "#{x} is even: #{x.even?}"
end

# single line version
p (1..10).to_a.select { |x| x.even? }

p (1..10).to_a.select(&:even?)

arr = %w(The ludicrous goat jumped among the splendid trees and accidentally angered a bear)

p arr.select {|x| x.length > 5}

p %w(a b c d e e i a d f g h i j k l m n o p q r s t u v w x y z ).select {|v| v =~ /[aeiou]/ }

p ["1", "23.0", "0", "4"].map {|x| x.to_i }

p ["1", "23.0", "0", "4"].map(&:to_i)

p ("a".."g").to_a.map {|i| i * 3 }

p Hash[[1, 2.1, 3.321, 0.6, 0.43].map {|x| [x,x.to_i]}]

Hash[[1, 2.1, 3.321, 0.6, 0.43].map {|x| [x.to_i,x]}]

Hash[%w(A dynamic open source language that does not use too many extra characters).map {|x| [x, x.length]}]

# For when you're using an api and want to create a literal of sorts.

link = {:a => "foo", :b => "bar"}.map{|a, b| "#{a}=#{b}"}.join('&')

p link

total = 0

random_numbers = [3, 5, 3, 2, 6, 788, 34, 67, 12, 90]

random_numbers.each do |i|
  total += i
  p total
end

p total
# Using Inject
# Add
p [3, 5, 3, 2, 6, 788, 34, 67, 12, 90].inject(&:+)
# Multiply
p [3, 5, 3, 2, 6, 788, 34, 67, 12, 90].inject(&:*)
# Divide
p [3, 5, 3, 2, 6, 788, 34, 67, 12, 90].inject(&:/)


