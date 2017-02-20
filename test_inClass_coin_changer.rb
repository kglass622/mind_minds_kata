require 'minitest/autorun'
require_relative 'inClass_coin_changer.rb'

def test_1_penny
		assert_equal({:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}, coin_values(1))
end

def test_hash_length
		assert_equal(4, coin_values(1).length)
end
