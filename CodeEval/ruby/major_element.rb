
def major_element(sequence)
	seq_hash = Hash.new(-1)
	max_frequency = 0
	max_element = nil
	sequence.each do |x|
		seq_hash[x] += 1
		if seq_hash[x] > max_frequency then
			max_frequency = seq_hash[x]
			max_element = x
		end	
	end
	puts "max frequency : %d max_element : %d len : %d" % [max_frequency, max_element, sequence.length]  

	if max_frequency >= sequence.length.divmod(2)[0]
		return max_element
	else
		return nil
	end	
end

def parse_input_str(input_str)
	sequence_str= input_str.split(",")
	return sequence_str.map{ |n| n.to_i}
end

input1 = parse_input_str("92,19,19,76,19,21,19,85,19,19,19,94,19,19,22,67,83,19,19,54,59,1,19,19")
ret= major_element(input1)
if not ret 
	puts "None"
else
	puts ret
end

input2 = parse_input_str("92,11,30,92,1,11,92,38,92,92,43,92,92,51,92,36,97,92,92,92,43,22,84,92,92")
ret= major_element(input2)
if not ret 
	puts "None"
else
	puts ret
end
input3 = parse_input_str("4,79,89,98,48,42,39,79,55,70,21,39,98,16,96,2,10,24,14,47,0,50,95,20,95,48,50,12,42")
ret =  major_element(input3)
if not ret 
	puts "None"
else
	puts ret
end
