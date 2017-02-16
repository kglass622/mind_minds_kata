
require 'minitest/autorun'
require_relative 'coin_changer.rb'

class Test_coin_changer < Minitest::Test

	def test_zero_cents_returns_empty_hash
		assert_equal({}, coin_changer(0))
	end

	def test_one_cent_returns_one_penny
		assert_equal({:penny => 1}, coin_changer(1))
	end

	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, coin_changer(2))
	end

	def test_5_cents_returns_1_nickel
		assert_equal({:nickel => 1}, coin_changer(5))
	end

	def test_6_cents_returns_1_penny_and_1_nickel
		assert_equal({:penny => 1, :nickel => 1}, coin_changer(6))
	end

	def test_10_cents_returns_1_dime
		assert_equal({:dime => 1}, coin_changer(10))
	end

	def test_11_cents_returns_1_penny_and_1_dime
		assert_equal({:penny => 1, :dime => 1}, coin_changer(11))
	end

	def test_16_cents_returns_1_penny_1_nickel_and_1_dime
		assert_equal({:penny => 1, :nickel => 1, :dime => 1}, coin_changer(16))
	end

	def test_21_cents_returns_2_dimes_and_1_penny
		assert_equal({:penny => 1, :dime => 2}, coin_changer(21))
	end

	def test_25_cents_returns_1_quarter
		assert_equal({:quarter => 1}, coin_changer(25))
	end

	def test_27_cents_returns_1_quarter_and_2_pennies
		assert_equal({:penny => 2, :quarter => 1}, coin_changer(27))
	end
end