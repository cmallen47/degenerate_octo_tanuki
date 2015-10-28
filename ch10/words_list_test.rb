require 'minitest/spec'
require 'minitest/autorun'
require './words_list.rb'


describe  WordsList, "Fun with words" do

	let(:words) {["igloo", "hotel", "golf", "foxtrot", 
		"echo", "delta", "charlie", "bravo", "alpha"]}
	let(:all_alphas) {["abc", "xyz", "AAA", "MnO", "ZZZ"]}
	let(:non_alphas) {["ABC", "mmm", "$$$"]}
	let(:even_list) {["cat", "dog", "bear", "lion"]}

	before do
		@words_list = WordsList.new
	end

	it "has a list with 1 or more items" do
		@words_list.list_has_items?(words).must_equal true
	end

	it "only has words with alpha chars" do
		@words_list.has_only_alpha_chars?(all_alphas).must_equal true
	end

	it "has a word with non-alphas" do
		@words_list.has_only_alpha_chars?(non_alphas).must_equal false
	end

	it "has a list with an even number of elements" do
		@words_list.list_even?(even_list).must_equal true
	end

	it "saves the first element if there is one" do
		@words_list.save_first_element(words).must_equal "igloo"
	end

	it "compares adjacent items in an evenly numbered list" do
		@words_list.compare_adjacent_elements(even_list).must_equal ["cat", "bear"]
	end

end