require 'test/unit'
require_relative 'piglatin_converter'

class TestAdd < Test::Unit::TestCase
  def test_string_with_vowel
  	assert_equal "igpay", PiglatinConverter.convert("pig")
  	assert_equal "omputercay", PiglatinConverter.convert("computer")
  	assert_equal "eedomfray", PiglatinConverter.convert("freedom")
  	assert_equal "ingstray", PiglatinConverter.convert("string")
  end

  def test_string_with_capital
  	assert_equal "ingstray", PiglatinConverter.convert("String")
  	assert_equal "ingstray", PiglatinConverter.convert("StrinG")
  end

  def test_string_empty
  	assert_equal '', PiglatinConverter.convert('')
  end

  def test_nil_string
  	assert_equal nil, PiglatinConverter.convert(nil)
  end
end



#pig                igpay
#   computer        omputercay
#   freedom         eedomfray
#   string          ingstray
#   String          ingstray
#   StrinG          ingstray
#   <EMPTY STRING>  <EMPTY STRING>
#   nil             nil