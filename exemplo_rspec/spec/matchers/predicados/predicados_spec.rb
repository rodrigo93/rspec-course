# Only for ruby methods

describe 'Predicados' do
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(2).to be_even
  end

  it 'nil' do
    expect(nil).to be_nil
    expect(defined? x).to be_nil
  end

  it 'zero' do
    expect(0).to be_zero
  end

  it 'nonzero' do
    expect(1).to be_nonzero
  end
end