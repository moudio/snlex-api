class CartsController < ApplicationController
  def create
    cart = Cart.new(user_id: cart_params[:user_id], product_id: cart_params[:product_id])
    if cart.save
      render json:
      {status: :created}
    end
  end

  private
  def cart_params
  params.require(:cart).permit(:user_id, :product_id)
end
end
