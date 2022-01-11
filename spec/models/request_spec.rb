require 'rails_helper'

RSpec.describe Request, type: :model do
  let(:request) { FactoryBot.build(:request) }

  describe 'requests sent' do
    context 'with lacking parameters' do
      it 'will throw an error if name is not present' do
        request = Request.new
        request.request_type = 'Certification'

        expect(request).to_not be_valid
        expect(request.errors).to be_present
      end

      it 'will throw an error if request type is not present' do
        request = Request.new
        request.name = 'Health Certification'

        expect(request).to_not be_valid
        expect(request.errors).to be_present
      end
    end

    context 'with complete parameters' do
      it 'will return a valid record' do

        expect(request).to be_valid
      end
    end
  end
end
