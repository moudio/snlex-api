class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: sessions_params[:username])
        if @user&& @user.authenticate(sessions_params[:password])
          render json: {
            status: "created",
            user: @user
          }
        else
          render json: {
            status: 401,
            errors: ['Verify credentials and try again or signup']
          }
        end
    end

    private
    def sessions_params
      params.require(:user).permit(:username, :password)
    end
end
