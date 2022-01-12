require 'rails_helper'

RSpec.describe Establishment, type: :model do
  let(:establishment) { FactoryBot.build(:establishment) }

  describe 'record created' do
    
    context 'with invalid params' do
      it 'will throw an error if no name is present' do
        establishment = Establishment.new

        expect(establishment).to_not be_valid
      end
    end

    context 'with valid params' do
      it 'will return a valid record if name is present' do

        expect(establishment).to be_valid
      end
    end
  end

  describe 'Association' do
    context 'has relationship with User model' do
      it 'contains a many to many association' do
        establishment = Establishment.reflect_on_association(:users)

        expect(establishment.macro).to eq(:has_and_belongs_to_many)
      end
    end
  end
end
