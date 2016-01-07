puts ""
while true
	print " kyle's age in seconds is: #{Time.at(Time.now).to_i - Time.utc(2008,"nov",14,13,20,33).to_i} \r"
	sleep 1
end

