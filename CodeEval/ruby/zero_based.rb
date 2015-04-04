
def convert_zero_base(zero_base_str)
	num_arr = Array.new
	flag_transform = nil
	zero_base_str.split(" ").each_with_index do |x, index|
		if index%2 == 0
			#puts "flag: %s %d" % [x, index]
			if x == "0" 
				flag_transform = false  
			else
				flag_transform = true
			end
		else
			if flag_transform 
				val = "1"
			else
				val = "0"
			end	
			(1..x.length).each do |x|
				num_arr.push(val)
			end	
		end	
	end 
	return num_arr.join
end

ret = convert_zero_base("00 0 0 00 00 0").to_s
puts ret.to_i(2)
