require 'rspec'
require_relative './new_roman'

describe 'roman numerals' do
	it 'displays the number 4 as a roman numeral' do
		expect(4.roman).to eq('IV')
	end

	it 'displays the number 9 as a roman numeral' do
		expect(9.roman).to eq('IX')
	end

	it 'displays the number 40 as a roman numeral' do
		expect(40.roman).to eq('XL')
	end

	it 'displays the number 90 as a roman numeral' do
		expect(90.roman).to eq('XC')
	end

	it 'displays the number 1999 as a roman numeral' do
		expect(1999.roman).to eq('MCMXCIX')
	end

	it 'displays the number 4 as a roman numeral' do
		expect(2999.roman).to eq('MMCMXCIX')
	end

end