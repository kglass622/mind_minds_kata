def close_but_not_quite(winning_num, ticket_num)
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

 	 winning_num.each do |winning_num|
 	 	if off_by_one (winning_num, ticket_num)
 	 	
 	 		array << winning_num
 	 	end
 	end
	array
 end