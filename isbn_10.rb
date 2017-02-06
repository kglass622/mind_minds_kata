def valid_isbn_length?(booknum10) # passing a string, and want a boolean out

	if booknum10.length == 10 || booknum10.length == 13
		true
	else
		false
	end
end

def anti_space_and_dashes(isbn_number) 
	# takes in a string with no spaces or dashes
	isbn_number.delete(' ' '-')
end

def check_for_letters(letters)
	if letters.chop.match(/[a-zA-Z]/) #!! returns true or false
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

	if isbn_num.chop =~ /\D/ # checking to see if there are symbols in the string. \D is the same as [^0-9] (everything except digits) - Not sure if I need to check the 9 spot using the tilde or not????
				#.chop removes last 
		true
	else
		false
	end

end	

def isbn_array(isbn_num)
	isbn_array = isbn_num.split(//) # splits the string to create an array of individual numbers ["1", "2", etc]
end		
def multiply(isbn_num)
		isbn_values = []
		isbn_array = isbn_num.split('')
		isbn_array.each_with_index do |value, index|
		if index < 9
			num = value.to_i * (index + 1)
			isbn_values.push(num)
		end
	end 
	isbn_values		
end

def sum(isbn_array)
	#isbn_array.inject(:+)
	counter = 0
	isbn_array.each do |value|
		counter = counter + value
	end
	counter
end

def remainder(isbn_num)
	isbn_num % 11
end

