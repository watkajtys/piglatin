class PiglatinConverter

  	def self.convert(word)
	  	if word == nil || word == ''
	  		return word
		else word.is_a?(String)
			pig = 'ay'
			word = word.downcase
			p consonant_set = word.split(/[aeiou]/)
			p first_consonant = consonant_set.shift
			p consonant_at_end = consonant_set << first_consonant
			p first = word.slice!(first_consonant)
			word+first+pig
		end
	end
end

# PiglatinConverter.convert('computer')
# PiglatinConverter.convert('')
# PiglatinConverter.convert(nil)