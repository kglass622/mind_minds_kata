require 'minitest/autorun'
require_relative 'winning_numbers.rb'

class TestMMFunction < MiniTest::Test

	def test_my_ticket_1234_returns_false_empty_array
		my_ticket = "1234"
		winning_numbers = []
		assert_equal(false, winning_draws(my_ticket, winning_numbers))
	end
	def test_my_ticket_1235_compared_to_array_of_one_returns_true()
		my_ticket = "1235"
		winning_numbers = ["1235"]
		assert_equal(true, winning_draws(my_ticket, winning_numbers))
	end
	def test_my_ticket_5123_compared_to_array_of_one_returns_false()
		my_ticket = "5123"
		winning_numbers = ["1235"]
		assert_equal(false, winning_draws(my_ticket, winning_numbers))
	end
	def test_my_ticket_1235_compared_to_array_of_one_returns_true()
		my_ticket = "1235"
		winning_numbers = ["1234", "1235", "4321", "1236"]
		assert_equal(true, winning_draws(my_ticket, winning_numbers))	
	end
	def test_my_ticket_4324_compared_to_array_of_one_returns_false()
		my_ticket = "4324"
		winning_numbers = ["1234", "1235", "4212", "4213"]
		assert_equal(false, winning_draws(my_ticket, winning_numbers))	
	end
		
end