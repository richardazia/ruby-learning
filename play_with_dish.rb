require 'rubygems'
require 'dish'

hash = {
  movie: "Airplane",
  actors: [
    { age: "don't know", name: "forgot"},
    { age: "haven't a clue", name: "I will check"},
    { age: "no idea", name: "something"},
  ],
  favourite: true,
}

p media = Dish(hash)

p media.movie
p media.actors.length
p media.actors[0]
p media.actors[1]
p media.actors[2]

