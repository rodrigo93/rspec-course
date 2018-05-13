require 'calculator'

describe Calculator do
	context '#sum' do
	  it 'with positive numbers' do
	  	calculator = Calculator.new
	  	result = calculator.sum(2,3)
	  	expect(result).to equal(2+3)
	  end

	  it 'with numbers and one as negative' do
	  	calculator = Calculator.new
	  	result = calculator.sum(-2,3)
	  	expect(result).to equal(-2+3)
	  end

	  it 'with negative numbers' do
			calculator = Calculator.new
	  	result = calculator.sum(-2,-3)
	  	expect(result).to equal(-2+(-3))
	  end
	end
end