def close_but_not(winning_num, ticket_num)
 		matches = 0
 		index_position = 0
 		ticket_num.length.times do 
 			
 		  if ticket_num[index_position] == winning_num[index_position]
 				matches += 1
 		  end	
 		index_position += 1
 		end
 	
 			if matches == ticket_num.length - 1
 				true
 			else
 				false
 			end
 	 	end

 def returning_function(ticket_num, winning_num)
 	 array = []

 	 	   ticket_num.each do |chicken|
 	 	if close_but_not(winning_num, chicken)
 	 	
 	 		array << chicken
 	 	end
 	end
	array
 end	
