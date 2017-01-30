#check to see if a number (value) exist in an array

def raffle_function(ticket_num, winning_num_array) 
	#winning_num_array.include?(ticket_num)
	
	# if winning_num_array.include?(ticket_num)
	# 	true
	# else
	# 	false
	# end
	counter = 0
	winning_num_array.each do |ticket|
		if ticket_num == ticket 
			counter = counter + 1
		end
			
		end
		if counter > 0
			true
		else
			false
	end

end
