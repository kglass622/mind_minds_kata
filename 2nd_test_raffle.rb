require "minitest/autorun"
require_relative "2nd_raffle.rb"

class Test_raffle_function < MiniTest::Test

	def test_is_true
		assert_equal(true, true)
	end

	def test_same_number_returns_false
		winning_num = '2337'
		ticket_num = '2337'
		results = close_but_not_quite(winning_num, ticket_num)
		assert_equal(false, results)
	end

	def test_one_off_returns_true
		winning_num = '1245'
		ticket_num = '2245'
		results = close_but_not_quite(winning_num, ticket_num)
		assert_equal(true, results)
	end

	def test_two_off_returns_false
		winning_num = '2247'
		ticket_num = '2357'
		results = close_but_not_quite(winning_num, ticket_num)
		assert_equal(false, results)
	end
end