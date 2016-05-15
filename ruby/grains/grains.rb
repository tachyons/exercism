class Grains
	TOTAL_SQUARES=64
	def self.square num
		2**(num-1)
	end
	def self.total
          square(TOTAL_SQUARES+1)-1
	end
end
