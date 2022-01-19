class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
    wrap_parameters false

    def create
        user = User.new(sign_up_params)

        if user.save
            user.update(:role => "health_user", :covid_status => "negative")
            render json: { user: user }
        else
            render json: { message: user.errors }
        end
        
    end

    private

    def sign_up_params
        params.permit(:first_name, :middle_name, :last_name, :password, :email)
    end
end