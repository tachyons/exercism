require 'prime'
class Raindrops
	VERSION=1
	DROP_MAPS= {
		3=>'Pling',
		5=>'Plang',
		7=>'Plong'
	}
	def self.convert(number)
		factors=number.prime_division.flatten.uniq-[1]
		return number.to_s if factors-[3,5,7]==factors
		factors.map do |number| DROP_MAPS[number] end.join
	end
end
