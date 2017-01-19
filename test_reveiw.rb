require 'minitest/autorun'
require_relative 'reveiw.rb'
class TestMMFunctions < Minitest::Test
	def test_one_equals_one
		assert_one_equal(1,1)
	end
end