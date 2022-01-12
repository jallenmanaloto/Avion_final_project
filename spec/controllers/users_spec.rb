require 'rails_helper'

describe 'Users request', type: :request do
    let!(:user) { FactoryBot.build(:user) }

    context 'Getting all list of users' do
        before {get '/api/v1/users'}

        it 'returns all users' do 
            expect(JSON.parse(response.body).size).to_not be_nil
        end

        it 'returns a status code 200' do
            expect(response).to have_http_status(:success)
        end
    end

    context 'Getting list of User with covid_status of Positive' do
        before {get '/api/v1/users/all_positive'}

        it 'returns all users as a Hash' do 
            expect(JSON.parse(response.body)).to be_an_instance_of(Hash)
        end

        it 'returns a status code 200' do
            expect(response).to have_http_status(:success)
        end
    end

    context 'Posting request to search for a user on search_user method' do
        before {get '/api/v1/users/all_positive'}

        it 'returns all users as a Hash' do 
            expect(JSON.parse(response.body)).to be_an_instance_of(Hash)
        end

        it 'returns a status code 200' do
            expect(response).to have_http_status(:success)
        end
    end
end