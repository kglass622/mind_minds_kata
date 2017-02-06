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

	def test_remove_spaces_dashes
		isbn_string = '12-34 67-8 90 88'
		assert_equal('12346789088', anti_space_and_dashes(isbn_string))
	end

	def test_check_for_letters
		num = '12k3467g890k'
		assert_equal(false, check_for_letters(num))
	end

	def test_check_for_letters_true
		num = '123467890'
		assert_equal(true, check_for_letters(num))
	end

	def test_if_x_at_end
		num = '123456789x'
		assert_equal(true, check_for_x(num))
	end
	def test_if_x_at_end_false
		num = '12345x6789?'
		assert_equal(false, check_for_x(num))
	end

	def test_check_for_symbol

		isbn_num = '123;456$7890'

		assert_equal(true, check_for_symbol(isbn_num))
	end
	
	def test_check_for_symbol_false

		isbn_num = '1234567890'

		assert_equal(false, check_for_symbol(isbn_num))
	end



	def test_isbn_is_array_of_individual_numbers

		isbn_num = '123456789'

		assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9"], isbn_array(isbn_num))

	end
end