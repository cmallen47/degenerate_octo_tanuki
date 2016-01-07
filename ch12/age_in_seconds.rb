puts ""
while true
	print " Matt's age in seconds is: #{Time.at(Time.now).to_i - Time.utc(1973,"aug",1,13,20,33).to_i} \r"
	sleep 1
end

