require 'rails_helper'

RSpec.describe Activity, type: :model do
  let(:user) { FactoryBot.build(:user) }
  let(:activity) { FactoryBot.build(:activity) }
  
  describe 'sending activity record' do
    context 'with lacking parameters' do
      it 'will return an error if name is not present' do
        activity = Activity.new
        activity.activity_type = 'Visit'

        expect(activity).to_not be_valid
        expect(activity.errors).to be_present
      end

      it 'will return an error if activity type is not present' do
        activity = Activity.new
        activity.name = 'Malls'

        expect(activity).to_not be_valid
        expect(activity.errors).to be_present
      end
    end

    context 'with correct parameters' do
      it 'will return a valid record' do

        expect(activity).to be_valid
      end
    end
  end

  describe 'Relationship' do
    context 'with User Model' do
      it 'has a belongs_to association' do
        activity = Activity.reflect_on_association(:user)

        expect(activity.macro).to eq(:belongs_to)
      end
    end
  end
end
