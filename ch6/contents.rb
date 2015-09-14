TABLE_OF_CONTENTS = "Table of Contents"
@contents 				= { ch1: ['1:', 'Getting Started', '1'], 
										ch2: ['2:', 'Numbers', '9'], 
										ch3: ['100:', 'Letters', '135'] }
@ch_numbers       = []
@ch_names         = []
@pg_numbers       = []


def print_contents
	puts ""
	puts TABLE_OF_CONTENTS.center(50)
	puts ""
	column_widths
	@contents.each do |k, v|
		puts "Chapter: #{print_chapter_numbers} + #{print_chapter_names} + 
					page: + print_page_numbers"
	end
	puts "\n"
end


def column_widths
	@contents.each do |k, v|
		@ch_numbers.push v[0]
		@ch_names.push v[1]
		@pg_numbers.push v[2]
	end
end


def print_chapter_numbers
	justify_by = get_width_largest_column_entry( @ch_numbers ) + 5
end


def print_chapter_names
	justify_by = get_width_largest_column_entry( @chapter_names )
end


def print_page_numbers
	# right_column_text.rjust( right_column_text.length == 6 ? 
	# 	val - center_column_text.length : 
	# 	val - ( center_column_text.length - 1 ))
end


def get_width_largest_column_entry column
	column.sort.last.length
end



print_contents

