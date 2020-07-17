class SessionsController < ApplicationController

    def create

    end

    private
    def sessions_params
      params.require(:user).permit(:username, :password)
    end
end
