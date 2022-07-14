def error_logger(e)
	File.open('error_logger.txt', 'a') do |file|
		file.puts e
	end
end

begin 
	puts 12/0
rescue StandardError => e
	error_logger("Error: #{e} at #{Time.now}")
end