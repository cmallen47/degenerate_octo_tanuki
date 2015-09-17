TABLE_OF_CONTENTS = "Table of Contents"
PADDING     			= 4
COL_1_PADDING     = "Chapter:".length + PADDING
COL_4_PADDING     = "page".length + PADDING
@contents 				= { ch1: ['1', 'Getting Started', '1'], 
					  				ch2: ['2', 'Numbers', '9'], 
				      			ch3: ['3', 'Letters', '25'],
				      			ch10: ['10', 'Lots of stuff in here!', '125'] }	      			


def display_table_of_contents
	column_data = collect_column_data
	contents    = build_contents_string column_data
	print_header column_data[:total_width]
	print_body contents
end

def collect_column_data
	chapter_numbers = []
	chapter_names	  = []
	page_numbers		= []
	@contents.each do |k, v|
		chapter_numbers << v[0]
		chapter_names << v[1]
		page_numbers << v[2]
	end
	largest_chapter = largest_value chapter_numbers
	largest_name    = largest_value chapter_names
	largest_page    = largest_value page_numbers
	total_width     = COL_1_PADDING + largest_chapter + largest_name + 
										COL_4_PADDING + largest_page + (PADDING * 2)
	column_data     = { largest_chapter: largest_chapter, 
											largest_name: largest_name, 
											largest_page: largest_page, 
											total_width: total_width }
end


def build_contents_string column_data
	contents = ""
	@contents.each do |k, v|
		chapter_number = v[0]
		chapter_name   = v[1]
		page_number    = v[2]
	 	contents 			 = contents + "Chapter:".ljust(COL_1_PADDING, ' ') + 
	 					"#{chapter_number.ljust(column_data[:largest_chapter] + 
	 					PADDING, ' ')}" + 
	 				 	"#{chapter_name.ljust(column_data[:largest_name] + 
	 				 	PADDING, ' ')}" + "page" + 
						"#{page_number.rjust(column_data[:largest_page] + PADDING, ' ')}\n" 
	end
	contents
end

def largest_value set
	largest = 0
	set.each do | v |
		largest = v.length if v.length > largest
	end
	largest
end

def print_header center_by
	puts ""
	puts "#{TABLE_OF_CONTENTS.center(center_by)}"
	puts ""
end

def print_body contents
	puts contents
	puts ""
end



display_table_of_contents

