require 'date'


class Job
	attr_accessor :start
	attr_accessor :end
	def initialize(date_range_str)
		@start, @end = parse_date_range(date_range_str)
	end

 	def experience_in_months
		return date_difference(@start, @end)
	end	

 	def experience_in_years
		return experience_in_months.divmod(12)[0]
	end	

	def to_s
		return "%s %s %d %d" % [@start, @end, experience_in_years,  experience_in_months]
	end
end	

def parse_date(date_str)
	return Date.parse(date_str)
end


def parse_date_range(range_str)
	d1, d2= range_str.split("-")
	return [Date.parse(d1), Date.parse(d2)]
end

def date_difference(d1, d2)
	ret = (d2.year - d1.year) * 12
	ret += d2.month
	ret -= d1.month
	return ret
end	

def parse_workex(input_str)
	jobs = Array.new
	job_strs = input_str.split(";")
	job_strs.each do |x|
		job_str = x.strip
		job = Job.new(job_str)
		jobs.push(job)
	end
	return jobs 	
end   	
=begin
d1 = parse_date("Feb 2004")
d2 = parse_date("Dec 2009")
puts date_difference(d1,  d2).divmod(12)
=end

=begin
	j1 = Job.new("Feb 2004-Dec 2009")
	puts j1.experience_in_months
	puts j1.experience_in_years
	puts j1.start
	puts j1.end
=end

begin
	puts parse_workex("Feb 2004-Dec 2009; Sep 2004-Jul 2008").to_s
end
