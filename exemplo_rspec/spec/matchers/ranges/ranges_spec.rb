describe (1..10), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(0,11)
  end

  it '#is_expected' do
    is_expected.to cover(2)
    is_expected.to cover(2,5)
    is_expected.not_to cover(0,11)
  end

  it { is_expected.to cover(2) } # should
  it { is_expected.to cover(2, 5) } # should cover 2 and 5
  it { is_expected.not_to cover(11) } # should not
  it { is_expected.not_to cover(11, 12) } # should not cover 11 and 12
end