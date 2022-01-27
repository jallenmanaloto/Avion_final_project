module Api
    module V1
        class ActivitiesController < ApplicationController
            
            def create
                user = User.find_by(uid: params[:uid])
                activity = user.activities.create(activities_params)

                if activity.save
                    activity.update(:userVisit => "#{user.first_name} #{user.last_name}", :userEmail => user.email, :userAddress => user.address, :userStatus => user.covid_status)
                    render json: { activity: activity, user: user }
                else
                    render json: {error: activity.errors}
                end
            end

            def user_activity
                estab_param = params[:name]
                activity = Activity.where(name: estab_param)
                
                render json: { users: activity}
            end

            private

            def activities_params
                params.permit(:name, :userAddress, :userEmail, :userVisit, :userStatus)
            end
        end
    end
end