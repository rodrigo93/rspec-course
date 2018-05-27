require 'string_nao_vazia'

describe 'Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exactly the class

    str = StringNaoVazia.new
    expect(str).not_to be_instance_of(String)
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)

    expect(10).to be_kind_of(Integer) # It can be by inheritance
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  # be_a and be_an are the same, it is just for pronunciation
  # They are the same as be_kind_of as well
  it 'be_a / be_an' do 
    str = StringNaoVazia.new

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    expect(10).to be_an(Integer)
  end
end