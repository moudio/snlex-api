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
  end

    def fetch_user_products
      @user_products = User.find(params[:id]).products
      if @user_products
        render json: {
          status: 'proucts fetched',
          products: @user_products
        }
      else
        render json: {
          status: 500,
          errors: @user_products.errors.full_messages
        }
    end

  end

  private
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
