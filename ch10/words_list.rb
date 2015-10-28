class WordsList

	def initialize
		@first_element = nil
		@winners       = []
		@losers        = []
	end

	def has_only_alpha_chars? words
		words.all? { |word| word[/[a-zA-Z]+/]  == word }
	end

	def sort_list words
		#magic stuff
	end

	def list_has_items? words
		words.length > 0
	end

	def list_even? words
		words.length % 2 == 0
	end

	def save_first_element words
		words.length > 0 ? @first_element = words.first : nil
	end

	#assumes an even numbered list of elements
	def compare_adjacent_elements words
		words = transpose_list words
		words.each do |x|
			#require 'debug'
			case x.first <=> x.last
			when -1
				@winners << x.first
				@losers  << x.last
			when 0
				@winners << x.first << x.last
			when 1
				@losers  << x.first
				@winners << x.last
			end
		end
		puts "winners: #{@winners}"
		@winners
	end

	def transpose_list words
		evens = words.values_at(* words.each_index.select { |i| i.even? })
		odds   = words.values_at(* words.each_index.select { |i| i.odd? })
		evens.zip odds
	end

end

