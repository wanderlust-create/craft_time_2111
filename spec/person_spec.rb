require './lib/person'
require 'pry'

RSpec.describe Person do
  let(:person) {Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})}
  
  it 'exists' do
    expect(person).to be_a Person
  end

  it 'has attributes' do
    expect(person.name).to eq("Hector")
    expect(person.interests).to eq (["sewing", "millinery", "drawing"])
    expect(person.supplies).to eq({})
  end

  it 'can add supplies' do
    person.add_supply('fabric', 4)
    person.add_supply('scissors', 1)
    person.add_supply('fabric', 3)

    expect(person.supplies).to eq({"fabric"=>7, "scissors"=>1})
  end
end
