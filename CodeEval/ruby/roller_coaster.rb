
def letter(in_char)
	return ((in_char.ord >= "a".ord and in_char.ord <= "z".ord) or (in_char.ord >= "A".ord and in_char.ord <= "Z".ord))
end

def roller_coaster_print(input_str)
	char_count = 0
	input_str.split("").each do |x|
		res = x
		if letter(x) then
			char_count += 1
			if char_count%2 == 0
				res = x.downcase
			else
				res = x.upcase
			end
		end	
		print res
	end	
end

roller_coaster_print("To be, or not to be: that is the question.")

