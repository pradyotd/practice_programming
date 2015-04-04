
def is_int(x)
	true if Integer(x) rescue false
end

def parse_print(in_str)
	numerals = Array.new
	strs = Array.new
	in_str.split(",").each do |x|
		if is_int(x)
			#puts "Number %s" % [x] 
			numerals.push(x.to_i)
		else
			#puts "String %s" % [x] 
			strs.push(x)
		end	
	end
	return "%s|%s" % [strs.join(","), numerals.join(",")]
end

puts parse_print("8,33,21,0,16,50,37,0,melon,7,apricot,peach,pineapple,17,21,24,13,14,43,41")
