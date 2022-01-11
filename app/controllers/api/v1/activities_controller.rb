module Api
    module V1
        class ActivitiesController < ApplicationController
            
            def index
                activities = Activity.all

                render json: { requests: activities }
            end
        end
    end
end