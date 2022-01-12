require 'rails_helper'

describe 'Establishment request', type: :request do
    let!(:establishment) { FactoryBot.build(:establishment) }

    context 'GET the list of all establishments' do
        before {get '/api/v1/establishment'}

        it 'returns a hash containing list of all establishments' do
            expect(JSON.parse(response.body).size).to_not be_nil
        end

        it 'returns a status of success' do
            expect(response).to have_http_status(:success)
        end
    end

    context 'GET the list of all users that has been in the establishment' do
        before {get '/api/v1/establishment', params: {:id => establishment.id}}

        it 'returns a hash containing list of all establishments' do
            expect(JSON.parse(response.body).size).to_not be_nil
        end

        it 'returns a status of success' do
            expect(response).to have_http_status(:success)
        end

        it 'returns all users as a Hash' do 
            expect(JSON.parse(response.body)).to be_an_instance_of(Hash)
        end
    end
end
