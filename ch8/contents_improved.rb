TABLE_OF_CONTENTS = "Table of Contents"
PADDING						= 5
@contents 				= { ch1: ['1', 'Getting Started', '1'], 
										ch2: ['2', 'Numbers', '9'], 
										ch3: ['100', 'Letters', '135'] }
@ch_numbers       = []
@ch_names         = []
@pg_numbers       = []

@contents.each do |k, v|
	@ch_numbers << v[0]
	@ch_names << v[1]
	@pg_numbers << v[2]
end


def print_contents
	puts ""
	puts TABLE_OF_CONTENTS.center(50)
	puts ""
	@contents.each do |k, v|
		puts "#{print_chapter_number} #{print_chapter_name} #{print_page_number}"
	end
	puts "\n"
end


def print_chapter_number
	justify_by = get_width_largest_column_entry( @ch_numbers ) + PADDING
end


def print_chapter_name
	justify_by = get_width_largest_column_entry( @ch_names )
end


def print_page_number
	justify_by = get_width_largest_column_entry( @pg_numbers ) + PADDING
end


def get_width_largest_column_entry column
	b = column.map { |v| v.length }
	b.sort.last
end


print_contents

