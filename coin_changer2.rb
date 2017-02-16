# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.
# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}
# Start a new repo
# Build up your coin_changer using tests. Commit to git after every test.


def coin_changer(change)
	broke = {}
	dime = 10
	quarter = 25
	penny = 1
	nickel = 5

	if change == 0
		return broke
	end

	if change >= 5
		broke[:nickel] = 1
	#	change = change - 5
	end

	if change >= 1
		broke[:penny] = change
	end
	
	
	broke
end