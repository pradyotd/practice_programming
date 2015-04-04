
def sort_arr_n_print(input_arr)
	sorted_arr = input_arr.sort
	#print sorted_arr.to_s
	sorted_arr_str = sorted_arr.collect{|x| '%.3f' % [x]}
	return sorted_arr_str.join(" ") 
end	

def convert_str_num_array(line)
	num_str_arr = line.split(" ")
	return num_str_arr.map{|x| x.to_f}
end	


puts convert_str_num_array("70.920 -38.797 14.354 99.323 90.374 7.581 -37.507 -3.263 40.079 27.999 65.213 -55.552").to_s
#puts sort_arr_n_print([70.920, -38.797, 14.354, 99.323, 90.374, 7.581, -37.507, -3.263, 40.079, 27.999, 65.213, -55.552])
