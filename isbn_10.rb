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

def remainder(sum)
	sum % 11
end
def compaire_check_digit(isbn_num)
		isbn_value = multiply(isbn_num)
		isbn_total = sum(isbn_value)
		isbn_mod = remainder(isbn_total)

		if isbn_mod == 10 && isbn_num[-1].match(/[xX]/)
			true
		elsif 
			isbn_num[-1].to_i == isbn_mod
			true
		else 
			false
		end
end

def valid13isbn?(isbn_string)
				#takes string and returns boolean
	isbn13_array = isbn_string.split('').map(&:to_i)# splits the string to create an array of individual numbers ["1", "2", etc]
	#isbn13_array_intenger = []#creates empty array
	#isbn13_array.each do |item|
	#isbn13_array_intenger << item.to_i #turns string t intenger
	#end
	#p isbn_array_intenger
	sum = 0 
	check_digit = 0
	isbn13_array.each_with_index do |value, index|
		break if index == 12
			if index % 2 == 0
			sum += value * 1
			else
			sum += value * 3
			end
		end
			sum = sum % 10
			check_digit = 10 - sum
		if  check_digit == 10 
			check_digit = 0
		end
		isbn13_array[12] == check_digit
	end

	def valid_isbn?(isbn_string)

	# if valid isbn and replace '0' with illegal character, the character comes back as '0' (false positive)

	# takes in string, returns boolean

	isbn_string_no_spaces_no_dashes = anti_space_and_dashes(isbn_string)

		if check_for_symbol(isbn_string_no_spaces_no_dashes) && isbn_string_no_spaces_no_dashes.length == 10

			check_for_letters(isbn_string_no_spaces_no_dashes)

			# check_for_symbols(isbn_string_no_spaces_no_dashes)

			check_for_x(isbn_string_no_spaces_no_dashes)

			compare_check_digit(isbn_string_no_spaces_no_dashes)

		

		elsif

			# check_for_symbols(isbn_string_no_spaces_no_dashes) && 

			isbn_string_no_spaces_no_dashes.length == 13

			check_for_letters(isbn_string_no_spaces_no_dashes)

			valid13isbn?(isbn_string_no_spaces_no_dashes)

		else

			false

		end
end
