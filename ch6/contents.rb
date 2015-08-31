TABLE_OF_CONTENTS = "Table of Contents"
@chapters = { ch1: ['Chapter 1:', 'Getting Started', 'page 1'], 
						ch2: ['Chapter 2:', 'Numbers', 'page 9'], 
						ch3: ['Chapter 3:', 'Letters', 'page 13'] }
LJUST = 15
LCOLUMN = 10
CENTER = 0
RJUST = 30

def print_contents
	puts ""
	puts TABLE_OF_CONTENTS.center(50)
	puts ""
	contents = ""
	@chapters.each do |k, v| 
		contents = contents + print_left_column( v[0] ) + print_center_column( v[1] ) + print_right_column( v[2] )  + "\n"
	end
	puts contents + "\n"
end

def print_left_column
	left_column = 
	#after chapter 9, the size of left column will increase to 11
	unless left_column <= 10
	v[0].ljust(LJUST)
end

def print_center_column
	v[1].center(CENTER)
end

def print_right_column
	v[2].rjust( v[2].length == 6 ? RJUST - v[1].length : RJUST - (v[1].length - 1))
end

print_contents
