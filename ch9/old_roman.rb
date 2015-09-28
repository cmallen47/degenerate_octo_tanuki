def display_roman_numerals numerus

	numerals = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1 }
	letters  = []
	original = numerus
	numerals.each do |k, v| 
		n = numerus.divmod v
		if n[0] == 0 && n[1] == v
			next
		else
			n[0].times { letters << k }
			numerus = n[1]
		end
	end
	puts "\nThe number #{original} converted to a Roman numeral is: \n"
	puts "#{letters.join''}\n"
end


display_roman_numerals 2999
display_roman_numerals 47
display_roman_numerals 777
display_roman_numerals 38
display_roman_numerals 502
