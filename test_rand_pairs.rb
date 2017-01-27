require 'minitest/autorun'
require_relative 'rand_pairs.rb'

class RandomPairs < MiniTest::Test
	def test_2_names_returns_2_pair
		pairs = create_pairs(["Kevin", "Bob"])
		assert_equal(1, pairs.count)
	end

	def test_5_names_returns_2_pairs
		pairs = create_pairs(["Kevin", "Bob", "mike", "tim"])
		assert_equal(2, pairs.count)
	end
		def test_6_names_returns_3_pairs
		pairs = create_pairs(["Kevin", "Bob", "mike", "tim", "jimmy", "Nicole"])
		assert_equal(3, pairs.count)
	end
		def test_1_names_returns_1_pairs
		pairs = create_pairs(["Kevin"])
		assert_equal(1, pairs.count)
		
	end
end
