module Api
    module V1
        class UsersController < ApplicationController
            before_action :authenticate_user!
            
            def all_positive
                positive = User.where(covid_status: 'positive')

                render json: { positive: positive }
            end

            def index
                users = User.where(role: 'health_user')

                render json: { users: users }
            end

            def search_user
                user = User.where('LOWER(first_name) LIKE :search OR LOWER(last_name) LIKE :search', search: "%#{params[:search].downcase}%")
                
                render json: { user: user }
            end

            def show
                user = User.find(params[:id])
            end

            def update
                user = User.find(params[:id])

                if user.update(user_params)
                    render json: { user: user }
                else
                    render json: { error: user.errors }
                end
            end

            def user_activities
                user = User.find(params[:id])
                activities = user.activities

                render json: { user: user, activities: activities }
            end

            def user_establishments
                user = User.find(params[:id])
                establishments = user.establishments

                render json: { establishments: establishments }
            end

            def user_requests
                user = User.find(params[:id])
                requests = user.requests

                render json: { user: user, requests: requests }
            end

            def add_establishment
                user = User.find(params[:id])
                estab = Establishment.find(params[:establishment_id])

                #user.update(visit: Time.current.to_s)
                user_estab = estab << user

                render json: { establishment: user_estab }
            end

            private

            def user_params
                params.permit(:id, :first_name, :middle_name, :last_name, :address, :gender, :birthday, :user)
            end
        end
    end
end