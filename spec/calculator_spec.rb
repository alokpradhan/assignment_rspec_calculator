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
      expect{(c.sqrt(-1))}.to raise_error(ArgumentError)
    end
  end

  describe '#memory=' do
    # before {c = Calculator.instance_variable_get(:@c)}
    it 'memory= should be nil if object has no value' do
      expect(c.memory=(Calculator.instance_variable_get(:@c))).to be(nil)
    end

    it 'memory= sets object value' do
      expect(c.memory=(8)).to be(8)
    end

    before {c.memory=(8)}
    it 'should return the value of the object' do
       expect(c.memory).to be(8)
       #expect(c.memory=(Calculator.instance_variable_get(:@c))).to be(8)
    end

    it 'memory= should be nil if object has no value' do
      expect(c.memory=(Calculator.instance_variable_get(:@c))).to be(nil)
    end

  end

  let (:c2){Calculator.new(true)}
  describe '#add' do
    it 'should return a string result' do
       expect(c2.add(1,2)).to eq("3")
    end

  	it 'should return a string class' do
       expect(c2.add(1,2).class).to be(String)
    end

  end

end