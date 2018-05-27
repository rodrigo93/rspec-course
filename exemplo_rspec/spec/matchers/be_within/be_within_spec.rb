# This is like a delta

describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect([12.6, 12.8, 12.4, 11.2]).to all(be_within(0.9).of(12)) }
end