require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'validate person' do

    context 'person have many animals' do
      let(:person)    { Person.create(name: 'Jhonny Cash',	document: 555555555,	birthdate: '1932-02-26') }
      let!(:animal_1) { Animal.create(name: 'Pé de Pano',	monthly_cost: 199.99, animal_type: 'Cavalo', person_id: person.id) }
      let!(:animal_2) { Animal.create(name: 'Pé de Pano',	monthly_cost: 199.99, animal_type: 'Cavalo', person_id: person.id) }

      it 'expect peson have more than 1 animal' do
        expect(person.animals.ids).to eq( [animal_1.id, animal_2.id] )
      end
    end
  end
end
