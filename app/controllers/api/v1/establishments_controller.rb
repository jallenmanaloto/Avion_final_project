module Api
    module V1
        class EstablishmentsController < ApplicationController
        
            def index
                establishments = Establishment.all
            end

            def get_users
                establishment = Establishment.find(params[:id])
                users = establishment.users

                render json: { users: users }
            end
    end
end