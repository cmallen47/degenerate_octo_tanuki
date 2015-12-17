require 'net/http'
require 'benchmark'
include Benchmark

hosts = {	
	:dfwintas1prd => { host: 'dfwintas1prd', port: '31151' },
	:dfwintas2prd => { host: 'dfwintas2prd', port: '31151' },
	:dfwintas3prd => { host: 'dfwintas3prd', port: '31151' },
	:dfwintas4prd => { host: 'dfwintas4prd', port: '31151' },
	:dfwintas5prd => { host: 'dfwintas5prd', port: '31151' },
	:dfwintas6prd => { host: 'dfwintas6prd', port: '31151' },
	:dfwintas7prd => { host: 'dfwintas7prd', port: '31151' },
	:dfwintas8prd => { host: 'dfwintas8prd', port: '31151' },
	:dfwintas9prd => { host: 'dfwintas9prd', port: '31151' },
	:dfwintas10prd => { host: 'dfwintas10prd', port: '31151' },
	:dfwintas11prd => { host: 'dfwintas11prd', port: '31151' },
	:dfwintas12prd => { host: 'dfwintas12prd', port: '31151' },
	:dfwintas13prd => { host: 'dfwintas13prd', port: '31151' },
	:dfwintas14prd => { host: 'dfwintas14prd', port: '31151' },
	:dfwintas15prd => { host: 'dfwintas15prd', port: '31151' },
	:dfwintas16prd => { host: 'dfwintas16prd', port: '31151' }
}
response = nil
$error = false

def show_timer
	puts "*** ERROR *** There was a problem communicating with at least one host!" if $error
	5.times do
		print "   \\\r"
		sleep 0.25 
		print "   |\r"
		sleep 0.25
		print "   /\r"
		sleep 0.25
		print "   -\r"
		sleep 0.25
	end
end

while true
	hosts.each do |k, v|
		begin
		  http = Net::HTTP.new(v[:host], v[:port])
		  puts "[#{k}]"
		  puts "\n*********************************************************\n"
		  Benchmark.benchmark(CAPTION, 10, FORMAT, "") do |x|
		  	x.report("time:") { response = http.get('/welcome.htm') }
		  	puts "\n*********************************************************\n"
				puts "[#{k}] Response code: #{response.code}"
		  	puts "[#{k}] Response message: #{response.message}"
		  	puts "[#{k}] Response uri: #{response.uri}"
		  	puts "[#{k}] Response lines: #{response.body.lines.size}"
		  	puts "[#{k}] Response first 5 lines:"
		  	puts "\n\n"
		  	response.body.lines[0..10].each { |l| puts l }
		  	puts "\n*********************************************************\n\n\n"
		  end
		rescue => err
	  	puts "Oh snap. Bad things happened. #{err}\n\n"
	  	$error = true
		end
	end
	show_timer
end



