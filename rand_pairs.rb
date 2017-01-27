def create_pairs(array_names)
	array = []
	array_pairs = array_names.shuffle.each_slice(2)
	array_pairs.each do |pairs|

		if pairs.length == 1
			array << array_names
	
	elsif pairs.length == 2
			array << pairs
		
		else
			array.last << pairs
		end
	end
	array
end