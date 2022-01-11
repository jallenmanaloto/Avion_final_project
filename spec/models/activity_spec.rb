require 'rails_helper'

RSpec.describe Activity, type: :model do
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

    context 'with complete parameters' do
      it 'will return a success record' do

        expect(activity).to be_valid
      end
    end
  end
end
