require 'minitest/autorun'
require_relative 'isbn_10.rb'

class Isbn_function < MiniTest::Test 
	#def test_1_array = []

	def test_num_is_10_true
		booknum10 = '1234567890'
		assert_equal(true, valid_isbn_length?(booknum10))
	end

	def test_num_is_9_false
		booknum10 = '123456789'
		assert_equal(false, valid_isbn_length?(booknum10))
	end	

	def test_num_is_valid_for_any_length
		booknum10 = '1234x67890'
		assert_equal(true, valid_isbn_length?(booknum10))
	end	

	

end