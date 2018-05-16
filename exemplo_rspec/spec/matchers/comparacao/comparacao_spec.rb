describe 'Matchers de Comparação' do
  it 'greater than' do
    expect(5).to be > 1
  end

  it 'greater than or equal to' do
    expect(5).to be >= 2
    expect(5).to be >= 5
  end

  it 'less than' do
    expect(5).to be < 6
  end

  it 'less than or equal to' do
    expect(5).to be <= 5
    expect(5).to be < 6
  end

  it 'be_between inclusive' do
    expect(6).to be_between(2,6).inclusive
    expect(2).to be_between(2,6).inclusive
    expect(4).to be_between(2,6).inclusive
  end

  it 'be_between exclusive' do
    expect(3).to be_between(2,5).exclusive
    expect(5).not_to be_between(2,5).exclusive
  end

  it 'match' do
    expect("fulano@teste.com.br").to match(/..@../)
  end

  it 'start_with' do
    expect("fulano de tal").to start_with("fulano")
    expect([1,2,3]).to start_with(1)
  end

  it 'end_with' do
    expect("fulano de tal").to end_with("de tal")
    expect([1,2,3]).to end_with(3)
    expect([1,2,3]).not_to end_with(2)
  end
end