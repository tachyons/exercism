class Complement
	RNA_MAP= {
		'G'=>'C',
		'C'=>'G',
		'T'=>'A',
		'A'=>'U'
	}
	VERSION=3
	def self.of_dna(dna)
		dna.chars.map do |char| 
			raise ArgumentError if RNA_MAP[char].nil?
			RNA_MAP[char]
		end.join
	end
end
