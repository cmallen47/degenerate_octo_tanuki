def display_roman_numeral numerus, numerals
	letters = []
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
	puts "The number #{original} converted to a Roman numeral is: \n"
	puts "#{letters.join''}"
end



numerals = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1 }

display_roman_numeral 2999, numerals