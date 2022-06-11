#!/usr/bin/env ruby
# based on Guessing game in Ruby Essentials Training Part 1

puts "---------------------"
puts "| Ruby Guessing Game|"
puts "---------------------"

puts "What is your name?"
print "> "

name = gets.chomp

puts "Hello, #{name}."
puts "Time to play a Numbers guessing game."
puts "I am thinking of a number between 1 and ten."
puts "Can you guess which one I am thinking of within three guesses?"

number = rand(10) + 1
puts "Excellent, I have chosen my number."

MAX_GUESSES = 3

1.upto(MAX_GUESSES) do |guess_num|
	print "Guess #{guess_num}:"
	guess = gets.chomp
	if guess.to_i == number
		puts "Lucky guess, #{name}!"
		puts "I was thinking of #{number}."
		break
	else
		puts "Sorry, wrong number."
		if guess_num == MAX_GUESSES
			puts
			puts "You have run out of guesses."
			puts "My number was #{number}."
		end
	end
end

puts "\n\nUntil next time!"
