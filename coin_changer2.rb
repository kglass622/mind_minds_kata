# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.
# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}
# Start a new repo
# Build up your coin_changer using tests. Commit to git after every test.


def coin_changer(change)
     pull_value_from_hash = {}
	 dime = 10		
	 quarter = 25 		
	# penny = 1				
	 #nickel = 5				

	if change == 0
		return pull_value_from_hash
	end
			#have to work backwards to make this work
					#must do higher value first
	
	if  change >= 25
		pull_value_from_hash[:quarter] = change/quarter
		change = change - 25
	end


	if change >= 20
		pull_value_from_hash[:dime] = change/dime #need this explained
		change = change - 20
	end


	if  change >= 10			
		pull_value_from_hash[:dime] = 1
		change = change - 10 #not sure why i need this but doesnt work without it
	end

	if  change >= 5
		pull_value_from_hash[:nickel] = 1
		change = change - 5
	end

	if  change >= 1
		pull_value_from_hash[:penny] = change
	end
	
	
	pull_value_from_hash
end