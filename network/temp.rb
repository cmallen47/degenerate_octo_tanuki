def time_method(method=nil, *args)
	begining_time = Time.now
	if block_given?
		yield
	else
		self.send(method, args)
	end
	end_time = Time.now
	puts "Time elapsed #{(end_time - begining_time)} seconds"
end

def method_to_time(*args)
	(1..10000).each { |i| i }
end

time_method do
	(1..10000).each { |i| i }	
end

time_method(:method_to_time)