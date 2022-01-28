require 'rails_helper'

RSpec.describe Item, type: :model do
  context "Invalid or empty image attribute" do
    it 'will return an error' do
      item = Item.new
      item.image = nil

      expect(item).to_not be_valid
    end
  end

  context "Valid image attribute" do
    it 'will return a success record' do

      user = User.new
      user.first_name = 'John'
      user.last_name = 'Doe'
      user.middle_name = 'M'
      user.email = 'johndoevalid@email.com'
      user.password = 'johnnypassword'

      item = user.items.new
      item.image = 'sampleurl'

      expect(item).to be_valid
    end
  end
end
