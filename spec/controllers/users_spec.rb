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
        before {get '/api/v1/users/all_positive', params: {:search => 'john'} }

        it 'returns all users as a Hash' do 
            expect(JSON.parse(response.body)).to be_an_instance_of(Hash)
        end

        it 'returns a status code 200' do
            expect(response).to have_http_status(:success)
        end
    end

    context 'GET request to get all activities made by the user' do
        before {get '/api/v1/users/user_activities', params: {:id => user.id} }

        it 'returns all activities as a Hash' do 
            expect(JSON.parse(response.body)).to be_an_instance_of(Hash)
        end

        it 'returns all activities if not empty' do 
            expect(JSON.parse(response.body).size).to_not be_nil
        end

        it 'returns a status code 200' do
            expect(response).to have_http_status(:success)
        end
    end

    context 'GET request to get all establishment that user has been to' do
        before {get '/api/v1/users/user_establishments', params: {:id => user.id} }

        it 'returns all establishments as a Hash' do 
            expect(JSON.parse(response.body)).to be_an_instance_of(Hash)
        end

        it 'returns list establishment if not empty' do 
            expect(JSON.parse(response.body).size).to_not be_nil
        end

        it 'returns a status code 200' do
            expect(response).to have_http_status(:success)
        end
    end

    context 'GET request to get all requests made by user' do
        before {get '/api/v1/users/user_establishments', params: {:id => user.id} }

        it 'returns all requests as a Hash' do 
            expect(JSON.parse(response.body)).to be_an_instance_of(Hash)
        end

        it 'returns list of requests if not empty' do 
            expect(JSON.parse(response.body).size).to_not be_nil
        end

        it 'returns a status code 200' do
            expect(response).to have_http_status(:success)
        end
    end
end