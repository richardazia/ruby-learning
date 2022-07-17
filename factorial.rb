def factorial_value_sum_generator(factorial)
	arr = (1..factorial).to_a.reverse.each { |i| factorial += factorial * (i - 1) }
	factorial.to_s.split(//).map(&:to_i).inject(:+)
end

p factorial_value_sum_generator(100)

class Fibonacci2
	def initialize(max)
		@num_1 = 0
		@i = 0
		@sum = 0
		@num_2 = 1
		@max = max
	end

	def even_fibonacci
		while @i <= @max
			@i = @num_1 + @num_2

			@sum += @i if @i if @i % 2 == 0

			@num_1 = @num_2

			@num_2 = @i
		end
		@sum
	end
end

result = Fibonacci2.new(4_000_000)
p result.even_fibonacci