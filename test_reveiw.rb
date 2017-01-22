require 'minitest/autorun'
require_relative 'reveiw.rb'
class TestMMFunctions < Minitest::Test
	
	def test_one_equals_one
		assert_equal(1,1)
end
	def test_one_returns_one
		assert_equal(1, function_one(1))
end
	def test_three_returns_mined
		assert_equal('mined', function_one(3))
end
	def test_five_returns_minds
		assert_equal('minds', function_one(5)

	def test_six_returns_mined	
	assert_equal('mined', function_one(6)	


end	