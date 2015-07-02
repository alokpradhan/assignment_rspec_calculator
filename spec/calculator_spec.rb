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

    it 'raises a number to the decimal power' do
      expect(c.pow(27,1/3.0)).to be(3.0)
    end

    it 'raises a number to the negative power' do
      expect(c.pow(1,-3)).to be(1.0) 
    end
	end

  describe '#sqrt' do
    it 'square root of simple number' do
      expect(c.sqrt(9.0)).to be(3)
    end

    it 'square root gives 2 decimals for non integer result' do
      expect(c.sqrt(8.0)).to be(2.83)
    end

    it 'square root from negative gives an error' do
      expect(c.sqrt(-1)).to raise_error(ArgumentError)
    end
  end

  describe '#memory=' do
    before {c = Calculator.new(8)}
      

    it 'memory= stores an object' do
      expect(c.memory=).to be(8)
    end
  end
  
  describe '#memory should eq nil' do
    it 'square root of simple number' do
      #expect(c.sqrt(9.0)).to be(3)
    end
  end



end