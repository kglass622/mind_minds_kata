require "minitest/autorun"
require_relative "raffle_in_class.rb"

class Raffle_class < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_number_exists	#function
		ticket_num = '1' 		#string of 1 
		winning_num_array = []	#empty array
		assert_equal(false, raffle_function(ticket_num, winning_num_array))
	end

	def test_returns_true
		ticket_num = '1234'
		winning_num_array = ['1234']
		assert_equal(true, raffle_function(ticket_num, winning_num_array))
	end
end