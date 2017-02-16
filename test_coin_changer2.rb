require 'minitest/autorun'
require_relative 'coin_changer2.rb'

class Test_coin_changer2 < Minitest::Test

	def test_no_money_return_empty_hash
		assert_equal({}, coin_changer(0))
	end

	def test_one_cent_returns_one_penny
		assert_equal({:penny => 1}, coin_changer(1))
	end
end