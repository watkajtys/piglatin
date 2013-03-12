class PiglatinConverter

  def self.convert(word)
   pig = 'ay'
   p consonant_set = word.downcase.split(/[aeiou]/)
   p first_consonant = consonant_set.shift
   p consonant_at_end = consonant_set << first_consonant
   p first = word.slice!(first_consonant)
   p word+first+pig

  end

end

PiglatinConverter.convert('computer')
