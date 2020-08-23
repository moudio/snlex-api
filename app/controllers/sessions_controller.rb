class SessionsController < ApplicationController


    def login
        @user = User.find_by(username: sessions_params[:username])
        if @user && @user.authenticate(sessions_params[:password])
          session[:user_id] = @user[:id]
          render json: {
            status: "logged_in",
            user: @user
          }
        else
          render json: {
            status: 401,
            errors: ['Verify credentials and try again or signup']
          }
        end
    end

    def logout
      session[:user_id] = nil
        render json: {
          status: 'logged out'
        }
        end


    private
    def sessions_params
      params.require(:user).permit(:username, :password)
    end
end
