require 'minitest/autorun'
require_relative 'winning_numbers.rb'

class TestMMFunction < MiniTest::Test

	def test_no_numbers_returns_false
		winner = ["2236", "4454", "3454"]
		ticket = "2235"
		assert_equal([], create_winner_array(winner,ticket))
			

	end
	
end