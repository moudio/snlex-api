class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {
        status: 'created',
        user: @user
      }
    end
  end



  private
  def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
