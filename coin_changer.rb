def coin_changer(money)
	pocket = {}
	dime_value = 10
	quarter_value = 25
	#remainder = 0
	#available_coins  = {"Quarter" => 25, "Dime" => 10, "Nickel" => 5, "Penny" => 1}

	if money == 0
		return pocket
	end

	if money >= 25
		pocket[:quarter] = money/quarter_value
		money = money - 25
	end

	if money >= 20
		pocket[:dime] = money/dime_value
		money = money - 20
	end

	if money >= 10
		pocket[:dime] = 1
		money = money - 10
	end

	if money >= 5
		pocket[:nickel] = 1
		money = money - 5
	end

	if money >= 1
		pocket[:penny] = money
	end
	pocket

end

  # def change(amount)

  # 	# hash to hold the list of available coins.
  #   available_coins  = {"Quarter" => 25, "Dime" => 10, "Nickel" => 5, "Penny" => 1}
  #   # holds list of coins to return
  #   coins            = {}     
  #   # holds the remaining amount of money to change.    
  #   remaining_amount = amount

  #   # counts down finds biggest coins first (iterates)
  #   available_coins.each do |coin| 
  #   	if ((remaining_amount/coin).to_int > 0)
  #   		then (remaining_amount/coin).to_int.times { coins << coin }
  #       	puts "Remaining Amount: #{remaining_amount} | Coin: #{coin}"
  #       	remaining_amount = amount - coins.inject(:+)
  #   		end                         # coins.inject(:+) sums hash items
  #   	end                           
  #   puts "Amount #{amount} >> Coins: #{coins}\n\n"
  #   return coins
  # end