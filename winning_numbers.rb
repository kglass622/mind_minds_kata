def winning_draws(my_ticket, winning_numbers)
	winners = 0
	#losers = 0
	winning_numbers.each do |value|

		if my_ticket == value
			winners += 1
		end
	end
	if winners > 0
		return true

	else 
		return false
	end
	
end