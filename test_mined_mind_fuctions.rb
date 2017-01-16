require "minitest/autorun"

def get_mined_minds_results(number)
	1
end

class TestMMFunctions < Minitest::Test
	def test_one_equals_one()
		assert_equal(1, get_mined_minds_results(1))
	end

end