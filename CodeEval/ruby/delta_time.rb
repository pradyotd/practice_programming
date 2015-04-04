#\d{2}:\d{2}:\d{2}


time_str = "14:01:57"

def time_from_str(time_str)
	match_grp = /(\d{2}):(\d{2}):(\d{2})/.match(time_str)
	if match_grp then
		ret = match_grp[1].to_i * 60 * 60 + 
		match_grp[2].to_i * 60 +
		match_grp[3].to_i
		return ret
	end
end

def diff_time(time1, time2)
	d = (time1 - time2).abs
	mins, secs = d.divmod(60)
	hours, mins= mins.divmod(60)
	return [hours, mins, secs]
end

time1 =  time_from_str("14:01:57")
time2 =  time_from_str("12:47:11")
h, m, s = diff_time(time1, time2)
print "%02d:%02d:%02d" % [h, m, s]
