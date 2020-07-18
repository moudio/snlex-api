class ProductsController < ApplicationController

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
end
