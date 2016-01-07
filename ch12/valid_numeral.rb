puts "Enter a roman numeral to check"
numeral = gets.strip
if numeral =~ /^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/
	puts "Valid numeral"
else
	puts "I don't speak latin"
end


