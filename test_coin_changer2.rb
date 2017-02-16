require 'minitest/autorun'
require_relative 'coin_changer2.rb'

class Test_coin_changer2 < Minitest::Test

	def test_no_money_return_empty_hash
		assert_equal({}, coin_changer(0))
	end
end