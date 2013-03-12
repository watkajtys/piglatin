class PiglatinConverter

	def self.convert(word)
		return word if word == nil || word == ''
		puts word + " is the input word"
		puts "This is the first consonant set before the vowel."
		p consonant_set = /^(.*?)[aeiou]/.match(word.downcase).captures
		puts "This is the fist consonant set as a string"
		p consonant_string = consonant_set.join('')
		puts "This is the final output"
		p word.gsub(consonant_string, '') + consonant_string + 'ay'
		
	end
 
end


	# def self.convert(word)
	#   	return word if word == nil || word == ''
	# 	word = word.downcase
	# 	consonant_set = word.split(/[aeiou]/)
	# 	first_consonant = consonant_set.shift
	# 	consonant_at_end = consonant_set << first_consonant
	# 	first_set = word.slice!(first_consonant)
	# 	word+first_set+'ay'
	# end