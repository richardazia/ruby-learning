#Version 3

class Fiction_ideas
	genres = %w(history fiction self-development)

	genres.each do |genre|
		define_method("#{genre}_details") do |arg|
			puts "genre: #{genre}"
			puts arg
			puts "Item ID: #{genre.object_id}"
		end
	end
end


# Option 2
# class Author
# 	def fictional_details(arg)
# 		puts "fiction"
# 		puts arg
# 		puts "You hallucinated that entire week"
# 	end

# 	def fiction_decisions(arg)
# 		puts "Details"
# 		puts arg
# 		puts "It was a cold and windy morning"
# 	end

# 	def fictional_niceties(arg)
# 		puts "Setting the mood"
# 		puts arg
# 		puts "The wind creaked over the loose floorboard before rushing over the edge and down the staircase"
# 	end
# end


#Option 1
# class Author
# 	define_method("some_method") do
# 		puts "blah blah blah"		
# 	end
# 	def some_method
# 		puts "Another blah blah"
# 	end
# end

author = Fiction_ideas.new
author.fiction_details("context")
p author.respond_to?(:history_details)

