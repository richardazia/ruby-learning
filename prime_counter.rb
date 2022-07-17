require 'prime'
require 'humanize'
require 'date'
# require 'rubysl-mathn'

# prime_array = Prime.take_while { |p | p < 2_000_000 }
#
# total_count = prime_array.inject {|sum, x | sum + x }
#
# p total_count # 142,913,828,922
#####
#p (2 ** 1000).to_s.split(//).map(&:to_i).inject(:+)
# we ** the number to a string, we then split the result into individual strings.
# After this we make each individual string an individual integer with map to i.
# We use inject + to add all the integers together.

# no_space_array, total = [], 0
# (1..1000).to_a.map(&:humanize).each {|word| no_space_array << word.delete(" ").delete("-")}.each { |element| total += element.length }

#This will go through numbers from 1 to 1000 and map them to an array. We then map it with humanize so that 1 = one
# 2 = two, 3 = three. etc.
# We then delete the space and - between words
#

# p no_space_array.each { |element| total += element.length }
#We add all the string lengths together to get the total length.

# p total # 24527
#####
# start_date = Time.local(1901)
# end_date = Time.local(2000, 12, 31)
# p start_date, end_date
# sunday_counter = 0
#
# while end_date >= start_date
#   if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
#     sunday_counter += 1
#   end
#   end_date -= 86400
# end
#
# p sunday_counter

#####

# def fibonacci_digit_counter
#   num1, num2, i = -1, 0, 1
#
#   while i.to_s.length < 1000
#     num1 += 1
#
#     i, num2 = num2, num2 + i
#   end
#   num1
# end
#
# p fibonacci_digit_counter

######
#
# Permutations
# arr = [1,2,3]
#
# arr.permutation {|i| puts i }
#
#
# p [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.to_a[999_999]

#######
# This app does not run.
# class Integer
#   def dsum
#     return 1 if self < 2
#
#     pd = prime_division.flat_map{ |n, p| [n]*p }
#
#     ([1] + (1...pd.size).flat_map{|e| pd.combination(e).map{ |f| f.reduce(:*) }}).uniq.inject(:+)
#   end
# end
#
# def find_d_sum(n)
#   n.times.inject do |sum, cur|
#     other = cur.dsum
#     (cur != other && other.dsum == cur) ? sum + cur : sum
#   end
# end
#
# p find_d_sum(10_000)

######
#
#
