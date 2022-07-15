#Method Missing

require 'ostruct'

class Author
	attr_accessor :first_name, :last_name, :genre, :number_of_books

	def author
		OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre, number_of_books: number_of_books)
	end

	def method_missing(method_name, *arguments, &block)
		if method_name.to_s =~ /author_(.*)/
			author.send($1, *arguments, &block)
		else
			super
		end
	end
end


author = Author.new
author.first_name = 'Leo'
author.last_name = 'Tolstoy'
author.genre = 'not sure'
author.number_of_books = 'At least 21'

p author.first_name

p author.author_genre

p author.number_of_books

puts author.respond_to?(:inspect)
puts author.respond_to?(:author_genre)


