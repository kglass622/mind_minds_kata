require 'minitest/autorun'
require_relative 'numbers.rb'

class TestAddition < Minitest::Test

	def test_string_of_numbers
			assert_equal(1,numbers('1'))

	end

	# def test_string_to_array
	# 	assert_equal(3,numbers(''))
	# end

end