x = [320, 450, 12, 23, 45, 6234, 12, 12, 18, 9]

p x

y = Array.new
p y

y[12] = 23

y[3] = 89

p y

ficelle = ["dfde", 3, "sdfsdf", 5, 3, 87, 12, 56, true, 3, 3, false, false, "asde", "aster", "ANT", "Bland"]

p ficelle
p ficelle.length

p ficelle.delete(3) # removes all instances of this number
p ficelle.delete_at(8)

p ficelle

#Hashes
#
# New syntax
video_roles = { director: "Directs the film", video_editor: "Takes care of editing the footage", camera_operator: "Points the camera the right way, and checks exposure"}

puts video_roles

p video_roles[:video_editor]

people = {John: 12, Samuel: 52, Sylvia: 33, Ludovic: 98}

p people

p people [:Samuel]

people.delete(:John)

p people

people.each_key do |key|
	puts key
end

people.each_value do |value|
	puts value
end

people[:Camelbak] = 32

p people

p people.invert # will swap age for name

people_invert = people.invert

p people_invert

people.merge(people_invert)

p people.to_a

p people.keys

p people.values

x = 10
y = 5

# const compare = if x == y
#   puts "x is the same as y"
# else
#   puts "x and y are not the same"
# end

# p compare

birds = ["ducks", "crows", "swans"]

# unless birds.empty?
# 	birds.each { |bird| puts bird }
# end
#
birds.each { |bird| puts bird } unless birds.empty?

birds.each { |bird| puts bird } if !birds.empty?

x = 10
y = 100
z = 10

if x == y
  puts "x is equal to y"
elsif x > y
  puts "x is greater than y"
else
  puts "something else"
end

# unfamiliar way of doing things
if x != y
  if x = z
    puts "equal to something"
  end
end

# Familiar way of doing things

if x == y && x == z
  puts "from the if statement"
end

if x == y || x == z
	puts "from the if statement"
end

if (x == 10 && x == z) || x == y
  puts "using parantheses"
end


