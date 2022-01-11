class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json

    def create
        super
        user = User.new(user_params)

        if user.save
            user.update(:role => "health_user")
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :middle_name, :last_name, :role)
    end
end