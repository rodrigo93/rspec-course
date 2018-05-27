require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new()
    pessoa.nome = "Rodrigo"
    pessoa.idade = 24

    expect(pessoa).to have_attributes(nome: starting_with("R"))
    expect(pessoa).to have_attributes(nome: a_string_starting_with("R"))
    expect(pessoa).to have_attributes(idade: be >= 24)
    expect(pessoa).to have_attributes(idade: a_value >= 24)
  end
end