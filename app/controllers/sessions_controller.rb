class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: sessions_params[:username])
        if @user&& @user.authenticate(sessions_params[:password])
          session[:user_id] = @user[:id]
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

    def destroy
      @user = User.find(params[:id])
      session[:user_id] = nil
      if @user
        render json: {
          status: 'logged out'
        }

      end
    end



    private
    def sessions_params
      params.require(:user).permit(:username, :password)
    end
end
