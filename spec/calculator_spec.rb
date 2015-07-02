require 'calculator'

describe Calculator do

	let(:c){Calculator.new}

	describe 'calculator is set up' do
		it 'should have an instance' do
			expect(c.class).to be(Calculator)
		end
	end

	describe '#add' do
		it 'adds two numbers' do
			expect(c.add(2,3)).to be(5)
		end
	end

	describe '#subtract' do
		it 'subtracts two numbers' do
			expect(c.subtract(1,2)).to be(-1)
		end
	end

	describe '#multiply' do
		it 'multiplies two numbers' do
			expect(c.multiply(2,3)).to be(6)
		end
	end


	describe '#divide' do
		it 'divides two numbers' do
			expect(c.divide(4,2)).to be(2)
		end
	end

	describe '#pow' do
		it 'raises a number to the power' do
			expect(c.pow(3,2)).to be(9.0)
		end
	end

end