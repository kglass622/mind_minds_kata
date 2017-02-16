def coin_changer(change)
	broke = {}
	dime = 10
	quarter = 25

	if change == 0
		return broke
	end

	if change >= 1
		broke[:penny] = change
	end
	broke
end