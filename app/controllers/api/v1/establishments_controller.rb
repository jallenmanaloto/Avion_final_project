module Api
    module V1
        class EstablishmentsController < ApplicationController
        
            def index
                establishments = Establishment.all

                render json: { establishments: establishments }
            end

            def create
                user = User.find(params[:id])
                establishment = user.establishments.create(establishment_params)

                if establishment.save
                    render json: { establishment: establishment }
                else
                    render json: { error: establishment.errors }
                end
            end

            def get_users
                establishment = Establishment.find(params[:id])
                users = establishment.users

                render json: { users: users }
            end

            private

            def establishment_params
                params.permit(:name)
            end
        end
    end
end