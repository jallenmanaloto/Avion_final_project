require 'rails_helper'

describe 'Getting all Users with role as health_user', type: :request do
    FactoryBot.create(:user)
    
    context 'accessing as an Admin' do
        it 'gets list of users' do

            get api_v1_users_path
            expect(response).to have_http_status(200)
        end
    end
end