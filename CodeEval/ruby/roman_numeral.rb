$translation_map = {
	1 =>'I', 
	4 =>'IV', 
	5 =>'V', 
	9 =>'IX', 
	10 =>'X', 
	40 => 'XL',
	50 =>'L', 
	90 => 'XC',
	100 =>'C', 
	500 =>'D', 
	1000 =>'M', 
}


def roman_numeral(num)
	#Check if we can get rid of this special case
	if $translation_map.has_key?(num) then
		return $translation_map[num]
	end
	result = []
	current = num
	puts "current: %d" % [current]
	puts $translation_map.to_s
	$translation_map.keys.sort.reverse.each do |key|
		#puts "key: %d" % [key]
		(val, current) = current.divmod(key)
		puts  "val:%d current:%d"% [val, current]
		if not val.zero?
			result.push($translation_map[key] * val)
		else
			next	
		end	
		if current == 0 then
			return result.join("")
		end
	end	
end


#puts roman_numeral(1)
#puts roman_numeral(9)
#puts roman_numeral(1000)
puts roman_numeral(2000)
puts roman_numeral(600)
puts roman_numeral(700)
puts roman_numeral(800)
puts roman_numeral(900)
	
