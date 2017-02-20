require 'minitest/autorun'
require_relative 'sinatra_Homework.rb'

class TestAddition < Minitest::Test

	def test_one_is_one
		assert_equal(1, 1)	
	end

	def test_one_one_one
		results = add(1, 1, 1, 3)
		assert_equal('Your numbers total up to your age!', results)	
	end

	def test_one_two_three
		results = add(1, 2, 3, 20)
		assert_equal('Your numbers are less than your age.', results)	
	end

	def test_four_ten_nineteen
		results = add(4, 10, 19, 8)
		assert_equal('Your numbers are greater than your age.', results)	

	end

end