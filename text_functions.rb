require "minitest/autorun"
require_relative 'functions.rb'

class TestMMFunctions < Minitest::Test
	
	def test_one_returns_one()
		assert_equal(1, 1)
	end

	def test_one_to_mined_minds_functionreturns_1()
		assert_equal(2, mined_minds_function(2))
	end

	def test_two_to_mined_minds_function_returns_2()
		assert_equal(2, mined_minds_function(2))
	end
	
	def test_three_to_mined_minds_function_returns_2
		assert_equal('mined', mined_minds_function(3))
	end

	def test_nine_to_mined_minds_function_returns_2
		assert_equal('mined', mined_minds_function(9))
	end
end