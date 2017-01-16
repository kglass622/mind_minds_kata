require "minitest/autorun"

require_relative "mined_minds_function.rb"

class TestMMFunctions < Minitest::Test
	def test_one_returns_one()
		assert_equal(1, get_mined_minds_results(1))
	end

	def test_two_returns_two() 
		assert_equal(2, get_mined_minds_results(2))
	end
	def test_three_returns_mined()
		assert_equal('mined', get_mined_minds_results(3))
	end

end