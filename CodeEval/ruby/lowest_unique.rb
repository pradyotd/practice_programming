

def lowest_unique_str(hand_as_str)
	hand_as_array_str = hand_as_str.split(" ")
	hand_as_array_int = []
	hand_as_array_str.each {|x| hand_as_array_int.push(x.ord - "0".ord)}
	return hand_as_array_int
end	


def lowest_unique(hand)
	num_selected_hash = Hash.new
    hand.each_with_index do |x, index|
		if not num_selected_hash.has_key?(x)
			num_selected_hash[x] = [index]
		else
			num_selected_hash[x].push(index)
		end	
	end
	#Now iterate through the hash(sorted), and return the first key
	#that has length of value == 1
	num_selected_hash.keys.sort.each do |key|
		#puts key
		if num_selected_hash[key].size == 1 then
			return (num_selected_hash[key][0] + 1)
		end
	end
	return 0
end	

#puts lowest_unique([3, 3, 9, 1, 6, 5, 8, 1, 5, 3]
#puts lowest_unique([9, 2, 9, 9,  1, 8, 8, 8, 2, 1, 1])
input_str = lowest_unique_str("9 2 9 9 1 8 8 8 2 1 1")
puts lowest_unique(input_str)

