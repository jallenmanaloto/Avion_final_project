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

            it 'does not accept if password is less than 6 characters' do
                user = User.new
                user.first_name = 'John'
                user.last_name = 'Doe'
                user.middle_name = 'M'
                user.email = 'johndoe@email.com'
                user.password = 'pass'
    
                expect(user).to_not be_valid
                expect(user.errors).to be_present
            end
        end

        context 'with valid parameters' do
            it 'accepts registration' do
                user = User.new
                user.first_name = 'John'
                user.last_name = 'Doe'
                user.middle_name = 'M'
                user.email = 'johndoevalid@email.com'
                user.password = 'johnnypassword'

                expect(user).to be_valid
            end
        end
    end

    describe 'Relationship' do
        context 'with Request model' do
            it 'has_many association' do
                user = User.reflect_on_association(:requests)

                expect(user.macro).to eq(:has_many)
            end
        end

        context 'with Activity model' do
            it 'has_many association' do
                user = User.reflect_on_association(:activities)

                expect(user.macro).to eq(:has_many)
            end
        end

        context 'with Establishment model' do
            it 'has_many association' do
                user = User.reflect_on_association(:establishments)

                expect(user.macro).to eq(:has_and_belongs_to_many)
            end
        end

        context 'with Appointment model' do
            it 'has_many association' do
                user = User.reflect_on_association(:appointments)

                expect(user.macro).to eq(:has_many)
            end
        end

        context 'with Item model' do
            it 'has_many association' do
                user = User.reflect_on_association(:items)

                expect(user.macro).to eq(:has_many)
            end
        end
    end
end
