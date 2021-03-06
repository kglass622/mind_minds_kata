require 'minitest/autorun'
require_relative 'coin_changer2.rb'

class Test_coin_changer2 < Minitest::Test

	def test_no_money_return_empty_hash
		assert_equal({}, coin_changer(0))
	end

	def test_one_cent_returns_one_penny
		assert_equal({:penny => 1}, coin_changer(1))
	end

	def test_for_2_pennies
		assert_equal({:penny => 2}, coin_changer(2))
	end

	def test_for_3_pennies
		assert_equal({:penny => 3}, coin_changer(3))
	end

	def test_for_4_pennies
		assert_equal({:penny => 4}, coin_changer(4))
	end

	def test_1_nickel
		assert_equal({:nickel => 1}, coin_changer(5))
	end

	def test_6_cents
		assert_equal({:nickel => 1, :penny => 1}, coin_changer(6))
	end

	def test_7_cents
		assert_equal({:nickel => 1, :penny => 2}, coin_changer(7))
	end

	def test_1_dime
		assert_equal({:dime => 1}, coin_changer(10))
	end
	
	def test_1_dime_2_pennies
		assert_equal({:dime => 1, :penny => 2}, coin_changer(12))
	end

	def test_1_quarter
		assert_equal({:quarter => 1}, coin_changer(25))
	end

	def test_2_dime
		assert_equal({:dime => 2}, coin_changer(20))
	end

	# def test_2_quarter
	# 	assert_equal({:quarter => 2}, coin_changer(50))
	# end

	


end