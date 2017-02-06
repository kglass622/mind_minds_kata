def valid_isbn_length?(booknum10) # passing a string, and want a boolean out

	if booknum10.length == 10
		true
	else
		false
	end
end

def anti_space_and_dashes(isbn_number)
	isbn_number.delete(' ' '-')
end

def check_for_letters(letters)
	if letters.match(/[a-zA-Z]/) #!! returns true or false
		false
	else 
		true
	end

end

def check_for_x(x_at_end)

	if x_at_end[-1].match(/[0-9xX]/)
		true
	else
		false
	end
end

def check_for_symbol(isbn_num)

	if isbn_num =~ /\D/ # checking to see if there are symbols in the string. \D is the same as [^0-9] (everything except digits) - Not sure if I need to check the 9 spot using the tilde or not????
		true
	else
		false
	end

end	

def isbn_array(isbn_num)
	isbn_array = isbn_num.split(//) # splits the string to create an array of individual numbers ["1", "2", etc]
end		
