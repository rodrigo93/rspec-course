require 'calculator' # This is the subject

describe Calculator, "sobre a Calculadora" do

	# subject(:calc) { described_class.new() } # Explicit subject

	context '#sum' do
	  it 'with positive numbers' do
	  	result = subject.sum(2,3)
	  	expect(result).to equal(2+3)
	  end

	  it 'with numbers and one as negative' do
	  	result = subject.sum(-2,3)
	  	expect(result).to equal(-2+3)
	  end

	  it 'with negative numbers' do
	  	result = subject.sum(-2,-3)
	  	expect(result).to equal(-2+(-3))
	  end

	  xit 'pending test' do
	  	result.sum(123,321)
	  end
	end
end