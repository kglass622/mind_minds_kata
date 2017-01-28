def create_winner_array(winner,ticket)
	matches = []

	winner.each do |winner|

	if winner == ticket
			matches << ticket
	
		puts "winner!!"
			
	elsif winner != ticket
		 	 

		 puts "loser"
	end
	
		end
	
	matches
end