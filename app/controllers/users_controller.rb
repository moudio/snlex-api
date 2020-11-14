class UsersController < ApplicationController

  def index
    @users = User.all
    render json: {
        users: @users
    }
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {
        status:'created',
        user: @user
      }
     else
        render json: {
          status: 500,
          errors: @user.errors.full_messages
        }

    end
    def user_products
      @user_products = User.find(params[:id]).products
    end
  end



  private
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
