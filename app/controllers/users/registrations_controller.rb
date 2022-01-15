class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
    respond_to :json

    def create
        user = User.new(user_params)

        if user.save
            user.update(:role => "health_user", :covid_status => "negative")
        end
        render json: { user: user }
    end

    private

    def user_params
        params.permit(:first_name, :middle_name, :last_name, :password, :email)
    end
end