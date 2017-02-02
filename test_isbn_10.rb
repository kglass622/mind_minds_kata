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

	def test_num_is_valid_for_any_length_or_characters
		booknum10 = '1234x67890'
		assert_equal(true, valid_isbn_length?(booknum10))
	end	

	def remove_spaces
		isbn_string = '1234 678 90 88'
		assert_equal('12346789088', anti_space(booknum10))
	end

	
		


end