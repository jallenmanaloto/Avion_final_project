module Api
    module V1
        class ItemsController < ApplicationController

            def create
                image = Cloudinary::Uploader.upload(params[:image])
                item = Item.create(image: image["url"])

                render json: item
            end
        end
    end
end