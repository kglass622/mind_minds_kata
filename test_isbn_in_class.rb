require 'minitest/autorun'

require_relative 'ISBN_in_class.rb' 


class Books_ISBN < Minitest::Test



	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_num_10_is_true
		book_num_10 = '9182736450'
		assert_equal(true, valid_ISBN_length?(book_num_10))
	end

	def test_num_10_is_false
		book_num_10 = '290834905'
		assert_equal(false, valid_ISBN_length?(book_num_10))
	end

	def test_num_is_false_dash
		book_num_10 = '4-023-78913-2'
		assert_equal('4023789132', remove_spaces_and_dashes(book_num_10))
	end

	def test_removing_spaces
		book_num_10 = '1 234 56984 5'
		assert_equal('1234569845', remove_spaces_and_dashes(book_num_10))
	end

	def test_check_for_letters
		book_num_10 = '456s789447'
		assert_equal(false, check_for_letters(book_num_10))
	end

	def test_true_if_x_at_end
		book_num_10 = '243798025x'
		assert_equal(true, check_for_x(book_num_10))
	end

	def test_for_symbols
		book_num_10 = '1238456&90'
		assert_equal(false, check_for_symbols(book_num_10))
	end

	def test_for_symbols_false
		book_num_10 = '1234098765'
		assert_equal(true, check_for_symbols(book_num_10))
	end
end

class TestMultiply < Minitest::Test

	def test_multiply_function_by_position
		results = multiply('123456789')
		assert_equal([1, 4, 9, 16, 25, 36, 49, 64, 81], results)
	end

	def test_sum_of_isbn
		results = sum([1, 2, 3, 4, 5, 6, 7, 8, 9])
		assert_equal(45, results)
	end

	def test_return_whats_left
	results = remainder(11)
	assert_equal(0, results)
	end

	def test_modulus_11
		results = remainder(232)
		assert_equal(1, results)
	end

	def test_remainder_equals_check_digit_true
		results = compare_check_digit('877195869x')
		assert_equal(true, results)
	end

	def test_remainder_results_equal_to_last_digit
		results = compare_check_digit('877195869X')
		assert_equal(true, results)
	end

	def test_remainder_false
		results = compare_check_digit('244590789')
		assert_equal(false, results)
	end

	def test_invalid_character
		results = compare_check_digit('123&456987')
		assert_equal(false, results)
	end

	def test_if_remainder_equals_checkdigit_false
		results = compare_check_digit('755#246x')
		assert_equal(false, results)
	end

	def test_valid_isbn_main_function
		results = valid_isbn?('0132971291')
		assert_equal(true, results)
	end
end

class Testisbn13 < Minitest::Test

	def test_valid_13_isbn
		isbn13 = '9780470059029'
		assert_equal(true, valid13isbn?(isbn13))
	end

	def test_isbn13_invalid
		isbn13 = '9720592241023'
		assert_equal(false, valid13isbn?(isbn13))
	end

	def test_valid_isbn_10_digit_in_main_function
		isbn_num = '0471958697'
		assert_equal(true, valid_isbn?(isbn_num))
	end

	def test_invalid_isbn_10_returns_false_main_function
		isbn_num = '047-958697'
		assert_equal(false, valid_isbn?(isbn_num))
	end

	def test_invalid_isbn_10_symbols_main_function
		isbn_num = '047&958697'
		assert_equal(false, valid_isbn?(isbn_num))
	end

	def test_valid_isbn_10_x_main_function
		isbn_num = '877195869x'
		assert_equal(true, valid_isbn?(isbn_num))
	end

	def test_valid_isbn_10_X_main_function_2
		isbn_num = '877 19-58 69X'
		assert_equal(true, valid_isbn?(isbn_num))
	end

	def test_valid_isbn_10_illegal_character_main_function
		isbn_num = '0294566@82'
		assert_equal(false, valid_isbn?(isbn_num))
	end

	def test_valid_13_isbn_2
		isbn13 = '978 0-13 149505-0'
		assert_equal(true, valid_isbn?(isbn13))
	end
end