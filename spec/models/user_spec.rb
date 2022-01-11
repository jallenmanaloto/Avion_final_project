require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { FactoryBot.build(:user) }
    describe 'Creating new user' do
        context 'with not valid parameters' do
            it 'does not accept if first_name is not present' do
                user = User.new
                user.middle_name = 'M'
                user.last_name = 'Doe'
                user.email = 'johndoe@email.com'
                user.password = 'johndoepass'
    
                expect(user).to_not be_valid
                expect(user.errors).to be_present
            end

            it 'does not accept if last_name is not present' do
                user = User.new
                user.middle_name = 'M'
                user.first_name = 'Doe'
                user.email = 'johndoe@email.com'
                user.password = 'johndoepass'
    
                expect(user).to_not be_valid
                expect(user.errors).to be_present
            end

            it 'does not accept if middle_name is not present' do
                user = User.new
                user.first_name = 'John'
                user.last_name = 'Doe'
                user.email = 'johndoe@email.com'
                user.password = 'johndoepass'
    
                expect(user).to_not be_valid
                expect(user.errors).to be_present
            end

            it 'does not accept if email is not present' do
                user = User.new
                user.first_name = 'John'
                user.last_name = 'Doe'
                user.middle_name = 'M'
                user.password = 'johndoepass'
    
                expect(user).to_not be_valid
                expect(user.errors).to be_present
            end

            it 'does not accept if password is not present' do
                user = User.new
                user.first_name = 'John'
                user.last_name = 'Doe'
                user.middle_name = 'M'
                user.email = 'johndoe@email.com'
    
                expect(user).to_not be_valid
                expect(user.errors).to be_present
            end
        end

        context 'with valid parameters' do
            it 'accepts registration' do

                expect(user).to be_valid
            end
        end
    end
end
