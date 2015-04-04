def is_self_describing(num_as_str)
	num_hash = Hash.new
	num_as_list = num_as_str.split("")
	num_as_list.each_with_index do |x, index|
		num_hash[index] = x.ord - "0".ord
	end
	num_as_list.each do |x|
		digit = x.ord - "0".ord
		if not num_hash.has_key?(digit)
			return 0
		elsif num_hash[digit] == 0
			return 0
		else
			num_hash[digit] = num_hash[digit] -1 	
		end	
	end
	num_hash.keys.each do |key|
		if not num_hash[key] == 0 then
			return 0
		end	
	end	
	return 1
end    

puts is_self_describing("2020")
puts is_self_describing("1210")
puts is_self_describing("22")
