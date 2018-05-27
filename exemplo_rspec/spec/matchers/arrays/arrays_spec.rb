describe Array.new([1,2,3,4,5,6,7]), "Array" do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2,5,7)
    expect(subject).not_to include([2,5,7])
  end
  
  it '#contain_exactly' do
    expect(subject).to contain_exactly(7,6,5,4,3,2,1)
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3,4,5,6,7])
  end
end