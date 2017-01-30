#check to see if a number (value) exist in an array

def raffle_function(ticket_num, winning_num_array) 
	#winning_num_array.include?(ticket_num)
	
	# if winning_num_array.include?(ticket_num)
	# 	true
	# else
	# 	false
	# end
	counter = []
	winning_num_array.each do |ticket|
		if ticket_num == ticket 
			counter << ticket
		puts counter
		end
			
		end
		if counter.length > 0
			true
		else
			false
	end
	#puts counter
	#return counter

end
