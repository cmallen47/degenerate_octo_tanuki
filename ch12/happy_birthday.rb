MONTHS = ['jan', 'feb', 'mar', 'apr', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec']

def get_birthday(day, month, year)

	#check if we have a valid value for 'day'
	raise "Bad value for day" if day.to_i < 1 || day.to_i > 31

	#check if we have a valid value for 'month'
	if month =~ /[[:digit:]]/
		raise "Bad value for month" unless (1..31).member? month.to_i 
	elsif month =~ /[[:alpha:]]/
		month = month[0..2]
		raise "Bad value for month" unless MONTHS.include? month
	else 
		raise "Unknown value for month"
	end

	#check if we have a valid value for year
	raise "Bad value for year" if year.to_i == 0

	#return time object for birthday if everything checks out
	Time.utc(year,month,day)

end


def determine_age(time)
	(Time.at(Time.now).to_i - time.to_i) / 60 / 60 / 24 / 365
end


puts "What year were you born?"
year = gets.strip
puts "And what month?"
month = gets.strip
puts "And finally, what day of the month?"
day = gets.strip

age = determine_age( get_birthday( day, month, year )).to_i

puts "You are #{age} years old!"






