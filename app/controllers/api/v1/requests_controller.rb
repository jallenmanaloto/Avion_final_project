module Api
    module V1
        class RequestsController < ApplicationController
            # before_action :get_user, only: [:create]
            before_action :authenticate_user!

            
            def index
                requests = Request.all

                render json: { requests: requests }
            end

            def create
                user = User.find(params[:user_id])
                request = user.requests.build(request_params)
                if request.save
                    request.update(requested_by: "#{user.first_name} #{user.last_name}", status: 'Pending', email: user.email)
                    render json: { request: request }
                else
                    render json: { error: request.errors }
                end
                
            end

            private

            def get_user
                user = User.find(params[:user_id])
            end

            def request_params
                params.permit(:name, :request_type, :user_id)
            end
        end
    end
end