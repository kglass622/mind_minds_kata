require "minitest/autorun"

require_relative "mined_minds_function.rb"

class TestMMFunctions < Minitest::Test
	def test_one_equals_one()
		assert_equal(1, get_mined_minds_results(1))
	end

end