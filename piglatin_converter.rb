class PiglatinConverter
	def self.convert(word)
		return word if word == nil || word == ''
		word_down = word.downcase
		consonant_set = /^(.*?)[aeiou]/.match(word_down).captures
		consonant_string = consonant_set.join('')
		word_down.gsub(consonant_string, '') + consonant_string + 'ay'
	end
end