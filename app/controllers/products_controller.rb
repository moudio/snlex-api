class ProductsController < ApplicationController
  # before_action :find_product,

  def index
    @products =  Product.all
    if(@products)
    render json: {
      products: @products
    }
  else
    render json: {
      message: "You don't have the rights for this request"
    }

  end
end

def show
  @product = Product.find(params[:id])
    render json: {
      product: @product
    }

end


private

def find_product
  @product = Product.find(params[:id])
end


end
