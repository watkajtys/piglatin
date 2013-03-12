class PiglatinConverter

	def convert(word)
		return word if word == nil || word == ''
		p consonant_set = /^(.*?)[aeiou]/.match(word.downcase).captures
		p final = word.sub(/^(.*?)[aeiou]/, '')
		p final + consonant_set.join('') + 'ay'
		
	end
 
end

converter = PiglatinConverter.new
converter.convert('string')

	# def self.convert(word)
	#   	return word if word == nil || word == ''
	# 	word = word.downcase
	# 	consonant_set = word.split(/[aeiou]/)
	# 	first_consonant = consonant_set.shift
	# 	consonant_at_end = consonant_set << first_consonant
	# 	first_set = word.slice!(first_consonant)
	# 	word+first_set+'ay'
	# end