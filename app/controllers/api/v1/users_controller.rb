module Api
    module V1
        class UsersController < ApplicationController

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

            private

            def user_params
                params.require(:user).permit(:first_name, :middle_name, :last_name, :covid_status)
            end
        end
    end
end