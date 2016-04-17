class Squares
	def initialize(num)
		@number=num
	end
	def square_of_sum
		(1..@number).inject(:+)**2
	end
end
