require 'calculator' # This is the subject

describe Calculator, "sobre a Calculadora" do

  # subject(:calc) { described_class.new() } # Explicit subject
  context '#div' do
    it 'divided by zero' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_error("divided by 0")
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.div(3,0)}.to raise_error(/divided/) # RegEx
    end
  end

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(2,3)
      expect(result).to eq(2+3)
      expect(result).not_to eq(6)  
    end

    it 'with numbers and one as negative' do
      result = subject.sum(-2,3)
      expect(result).to eq(-2+3)
    end

    it 'with negative numbers' do
      result = subject.sum(-2,-3)
      expect(result).to eq(-2+(-3))
    end

    xit 'pending test' do
      result.sum(123,321)
    end
  end
end