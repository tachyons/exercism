class Hamming
	VERSION=1
	def self.compute(string1,string2)
		raise ArgumentError if string1.length!=string2.length
		count=0
		string1.length.times do | index |
			count+=1 if string1[index]!=string2[index]
		end
		count
	end
end
