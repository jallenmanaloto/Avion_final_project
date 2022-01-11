module Api
    module V1
        class UsersController < ApplicationController

            def index
                users = User.all

                render json: { users: users }
            end

            def search_user
                user = User.where('LOWER(first_name) OR LOWER(last_name) LIKE ?', "%#{params[:search].downcase}%")
                
                render json: { user: user }
            end

            def show
                user = User.find(params[:id])
            end

            private

            def user_params
                params.require(:user).permit(:first_name, :middle_name, :last_name, :role)
            end
        end
    end
end