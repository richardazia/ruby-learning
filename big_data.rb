require 'rubygems'
require 'decisiontree'

attributes = ['Temp']
training = [
	[36.2, 'unwell'],
	[37.2, 'healthy'],
	[32.2, 'dead'],
	[37.5, 'unwell'],
	[36.8, 'healthy'],
	[37.1, 'healthy'],
	[36.7, 'healthy']
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'unwell', :continuous)
dec_tree.train

test = [38, 'unwell']

decision = dec_tree.predict(test)

puts "Prediction: #{decision}"
puts "Reality: #{test.last}"