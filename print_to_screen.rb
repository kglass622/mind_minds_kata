number = 1

100.times do 
	if number % 15 == 0
		puts 'mined_minds'
	elsif number % 3 == 0
		puts 'mined'		
	elsif number % 5 == 0 
		puts 'minds'
	else 
		puts number 	
	end	
	number = number + 1 
end
