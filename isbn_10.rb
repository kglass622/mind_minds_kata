def valid_isbn_length?(booknum10) # passing a string, and want a boolean out

	if booknum10.length == 10
		true
	else
		false
	end
end

def anti_space(isbn_number)
	isbn_number.delete(' ' '-')
end

def check_for_letters(letters)
	!!letters.match(/[a-z A-Z]/) #!! returns true or false
		false
	else 
		true
	end

def check_for_x (x_at_end)

	if x_at_end[-1].match(/[0-9 x X]/)
		true
	else
		false
	end


end