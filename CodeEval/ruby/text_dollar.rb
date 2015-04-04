$translation_map = {
	1 =>'One', 
	2 =>'Two', 
	3 =>'Three', 
	4 =>'Four', 
	5 =>'Five', 
	6 =>'Six', 
	7 =>'Seven', 
	8 =>'Eight', 
	9 =>'Nine', 
	10 =>'Ten', 
	11 => 'Eleven',
	12 => 'Twelve',
	13 => 'Thirteen',
	14 => 'Fourteen',
	15 => 'Fifteen',
	16 => 'Sixteen',
	17 => 'Seventeen',
	18 => 'Eighteen',
	19 => 'Nineteen',
	20 => 'Twenty',
	30 => 'Thirty',
	40 => 'Forty',
	50 => 'Fifty',
	60 => 'Sixty',
	70 => 'Seventy',
	80 =>'Eighty', 
	90 => 'Ninety',
	100 =>'Hundred', 
	1000 =>'Thousand', 
	1000000 =>'Million', 
	1000000000 =>'Billion', 
}


def text_dollar_display(num)
	return text_dollar(num) + "Dollars"
end	


def text_dollar(num)
	#Check if we can get rid of this special case
	if $translation_map.has_key?(num) then
		if num >= 100
			return "One%s" [$translation_map[num]]
		else
			return $translation_map[num]
		end	
	end
	result = []
	current = num
	#puts "current: %d" % [current]
	#puts $translation_map.to_s
	$translation_map.keys.sort.reverse.each do |key|
		#puts "key: %d" % [key]
		(val, current) = current.divmod(key)
		#puts  "val:%d current:%d key:%d"% [val, current, key]
		if not val.zero?
			if val > 1
				if $translation_map.key?(val)
					result.push(($translation_map[val] + $translation_map[key]))
				else
					result.push((text_dollar(val) + $translation_map[key]))
				end	
			elsif result.empty?
				result.push("One" + $translation_map[key])
			else
				result.push($translation_map[key])
			end	
		else
			next	
		end	
		if current == 0 then
			return result.join("")
		end
	end	
end

=begin
=end
puts text_dollar_display(3) 
puts text_dollar_display(10) 
puts text_dollar_display(21)
puts text_dollar_display(466)
puts text_dollar_display(1234)
puts text_dollar_display(751)
puts text_dollar_display(91125)
puts text_dollar_display(650125978)
