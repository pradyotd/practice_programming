

def find_operator_operands(expr_str)
   operator_pos = expr_str.index('+')
   if operator_pos then
	   return [true, operator_pos, (expr_str.length - operator_pos -1)]
   end
   operator_pos = expr_str.index('-')
   if operator_pos then
	   return [false, operator_pos, (expr_str.length - operator_pos -1)]
   end
end
	   
def split_number(number_str, exp_str)
	is_add, op1_len, op2_len = find_operator_operands(exp_str)
	op1 = number_str[0..(op1_len -1)]
	op2 = number_str[op1_len..(number_str.length - 1)]
	if is_add
		return op1.to_i + op2.to_i
	else
		return op1.to_i - op2.to_i
	end	
end	

#find_operator_operands('a-bcdefghij').to_s
puts split_number('3413289830', 'a-bcdefghij')
