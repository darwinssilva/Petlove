require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'validate person' do

    context 'person have many animals' do
      let(:person)    { Person.create(name: 'Jhonny Cash',	document: 555555555,	birthdate: '1932-02-26') }
      let!(:animal_1) { Animal.create(name: 'Pé de Pano',	monthly_cost: 199.99, animal_type: 'Cavalo', owner: person) }
      let!(:animal_2) { Animal.create(name: 'Pé de Pano',	monthly_cost: 199.99, animal_type: 'Cavalo', owner: person) }

      it 'expect peson have more than 1 animal' do
        expect(person.animals).to eq( [animal_1, animal_2] )
      end
    end

    context 'validate of age' do
      let(:person_old)      { Person.create(name: 'Jhonny Cash',	document: 555555555,	birthdate: '1932-02-26') }
      let(:person_young)    { Person.create(name: 'Jhonny Cash',	document: 555555555,	birthdate: '2010-02-26') }

      it 'return true' do
        expect(person_old.of_age?).to be_truthy
      end

      it 'return false' do
        expect(person_young.of_age?).to be_falsey
      end
    end

    context 'can buy andorinha' do
      let(:person_old)      { Person.create(name: 'Jhonny Cash',	document: 555555555,	birthdate: '1932-02-26') }
      let(:person_young)    { Person.create(name: 'Jhonny Cash',	document: 555555555,	birthdate: '2010-02-26') }

      it 'return true' do
        expect(person_old.can_buy_andorinha?).to be_truthy
      end

      it 'return false' do
        expect(person_young.can_buy_andorinha?).to be_falsey
      end
    end

    context 'can buy cat' do
      let(:person_1)    { Person.create(name: 'André',	document: 555555555,	birthdate: '1932-02-26') }
      let(:person_2)    { Person.create(name: 'Darwin',	document: 555555555,	birthdate: '2010-02-26') }

      it 'return true' do
        expect(person_2.can_buy_cat?).to be_truthy
      end

      it 'return false' do
        expect(person_1.can_buy_cat?).to be_falsey
      end
    end

    context 'can buy more animals' do
      let(:person_1)    { Person.create(name: 'André',	document: 555555555,	birthdate: '1932-02-26') }
      let(:person_2)    { Person.create(name: 'Darwin',	document: 555555555,	birthdate: '2010-02-26') }
      let!(:animal_1) { Animal.create(name: 'Pé de Pano',	monthly_cost: 11199.99, animal_type: 'Cavalo', owner: person_1) }
      let!(:animal_2) { Animal.create(name: 'Pé de Pano',	monthly_cost: 199.99, animal_type: 'Cavalo', owner: person_2) }

      it 'return true' do
        expect(person_2.can_buy_more_animals?).to be_truthy
      end

      it 'return false' do
        expect(person_1.can_buy_more_animals?).to be_falsey
      end
    end
  end
end
