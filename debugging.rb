begin 
	puts 0 * nil
rescue StandardError => e
	puts "Error occured: #{e}"
end