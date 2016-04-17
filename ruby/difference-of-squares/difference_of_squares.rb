class Squares
	def initialize(num)
		@number=num
	end
	def square_of_sum
		(1..@number).inject(:+)**2
	end
	def sum_of_squares
		(1..@number).map do | number| number**2 end.inject(:+)
	end
end
