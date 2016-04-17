class Squares
	VERSION=2
	def initialize(num)
		@number=num
	end
	def square_of_sum
		(0..@number).inject(:+)**2
	end
	def sum_of_squares
		(0..@number).map do | number| number**2 end.inject(:+)
	end
	def difference
		square_of_sum-sum_of_squares
	end
end
