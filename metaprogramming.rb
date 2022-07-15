class Cycling
end

class Cycling
	def gear_change
		"gear changed"
	end
end

p Cycling.new.gear_change

class String
	def censor(swearing)
		self.gsub! "#{swearing}", " - impolite word - "
	end

	def num_of_chars
		size
	end
end

p "The quick bunny ran across the world's only chocolate desert, where many a bunny would live. It almost got its paw stuck".censor("bunny")
puts "The quick bunny ran across the world's only chocolate desert, where many a bunny would live. It almost got its paw stuck".num_of_chars

########

