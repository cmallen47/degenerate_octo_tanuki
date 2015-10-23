require 'rspec'
require_relative './new_roman'

describe '#convert_to_roman' do

	it 'displays the number 1 as a roman numeral' do
		expect(convert_to_roman(1)).to eq('I')
	end

	it 'displays the number 4 as a roman numeral' do
		expect(convert_to_roman(4)).to eq('IV')
	end

	it 'displays the number 5 as a roman numeral' do
		expect(convert_to_roman(5)).to eq('V')
	end

	it 'displays the number 9 as a roman numeral' do
		expect(convert_to_roman(9)).to eq('IX')
	end

	it 'displays the number 48 as a roman numeral' do
		expect(convert_to_roman(48)).to eq('XLVIII')
	end

	it 'displays the number 90 as a roman numeral' do
		expect(convert_to_roman(90)).to eq('XC')
	end

	it 'displays the number 259 as a roman numeral' do
		expect(convert_to_roman(259)).to eq('CCLIX')
	end

	it 'displays the number 2597 as a roman numeral' do
		expect(convert_to_roman(2597)).to eq('MMDXCVII')
	end
end

describe '#romanize' do

	it 'displays the number 1 as a roman numeral' do
		expect(1.romanize).to eq('I')
	end

	it 'displays the number 4 as a roman numeral' do
		expect(4.romanize).to eq('IV')
	end

	it 'displays the number 5 as a roman numeral' do
		expect(5.romanize).to eq('V')
	end	

	it 'displays the number 9 as a roman numeral' do
		expect(9.romanize).to eq('IX')
	end

	it 'displays the number 10 as a roman numeral' do
		expect(10.romanize).to eq('X')
	end

	it 'displays the number 40 as a roman numeral' do
		expect(40.romanize).to eq('XL')
	end

	it 'displays the number 50 as a roman numeral' do
		expect(50.romanize).to eq('L')
	end

	it 'displays the number 90 as a roman numeral' do
		expect(90.romanize).to eq('XC')
	end

	it 'displays the number 100 as a roman numeral' do
		expect(100.romanize).to eq('C')
	end

	it 'displays the number 258 as a roman numeral' do
		expect(258.romanize).to eq('CCLVIII')
	end

	it 'displays the number 1999 as a roman numeral' do
		expect(1999.romanize).to eq('MCMXCIX')
	end

	it 'displays the number 2999 as a roman numeral' do
		expect(2999.romanize).to eq('MMCMXCIX')
	end

	it 'displays the number 3000 as a roman numeral' do
		expect(3001.romanize).to eq('MMMI')
	end
end