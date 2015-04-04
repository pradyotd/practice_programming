
def is_digit(in_char)
	temp = in_char.ord - "0".ord
	if temp >= 0 and temp <=9 then
		return true
	end	
	return false	
end

def translate_if_hidden_digit(a)
	temp = a.ord - "a".ord
	if temp >= 0 and temp <=9 then
		return ("0".ord + temp).chr  	
	end	
	return nil
end 

def translate_input_str(input_str)
	result = []
	input_str.split("").each do |x|
		if is_digit(x) then
			result.push(x)
		end   	
		ret = translate_if_hidden_digit(x)
		unless ret.nil?
			result.push(ret)
		end   	
	end
	if result.empty?() then
		return "NONE"
	end	
	return result.join("")
end	

#puts is_digit("0")
#puts is_digit("9")
puts  translate_input_str("abcdefghik")
