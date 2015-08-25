SECONDS_PER_HOUR = 60
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
DAYS_PER_YEAR = 365
DECADE = 10

def age_in_seconds
  birth = Time.new(1973, 8, 1, 5, 31, 23, "-05:00")
  10.times do
    puts "I am currently #{ (Time.now - birth).to_i } seconds old"
    sleep 1
  end
end

puts "The number of hours in a year is: #{ HOURS_PER_DAY * DAYS_PER_YEAR }"
puts "The number minutes in a decade is: #{ MINUTES_PER_HOUR * HOURS_PER_DAY * DAYS_PER_YEAR * DECADE }"
age_in_seconds



