class PiglatinConverter

  def self.convert(word)
   word = word.downcase
   pig = 'ay'
   p word
   p consonant = word.split(/[aeiou]/)
   p another = consonant.shift
   p final = consonant << another
   p final.join
   p word
   p "result "
   p first = word.slice!(another)
   p word+first+pig

  end

end

PiglatinConverter.convert('computer')
PiglatinConverter.convert('freedom')
PiglatinConverter.convert('string')
PiglatinConverter.convert('strong')
