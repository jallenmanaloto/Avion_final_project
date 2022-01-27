module Api
    module V1
        class ItemsController < ApplicationController

            def show
                user = User.find(params[:id])
                item = user.items.last

                render json: item
            end

            def create
                user = User.find(params[:id])
                image = Cloudinary::Uploader.upload(params[:image])
                item = user.items.create(image: image["url"])

                render json: item
            end
        end
    end
end