def describe_age(age)
	res = "This program is for humans"
	case age
	when 0..2 
		res = "Still in Mama's arms" 
	when 3..4
		 res = "Preschool Maniac" 
	when 5..11
 		res = "Elementary school"
	when 12..14 
		res = "Middle school" 
	when 15..18 
		res = "High school" 
	when 19..22
 		res = "College"
	when 23..65
 		res = "Working for the man" 
	when 66..100
	 		res = "The Golden Years"
	 end		
	puts res   	
end

describe_age(0)
describe_age(19)
