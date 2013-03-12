class PiglatinConverter

  	def self.convert(word)
	  	return word if word == nil || word == ''
		word = word.downcase
		consonant_set = word.split(/[aeiou]/)
		first_consonant = consonant_set.shift
		consonant_at_end = consonant_set << first_consonant
		first_set = word.slice!(first_consonant)
		word+first_set+'ay'
	end
end