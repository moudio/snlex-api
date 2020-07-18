class ProductsController < ApplicationController
   before_action :find_product, only: [:show]

  def create
      @product = Product.new(product_params)
      if(@product.save)
          render json: {
            status: 'created',
            product: @product
          }
      else
        render json: {
          status: 500,
          erros: @product.errors.full_messages
        }
      end
  end

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
    render json: {
      product: @product
    }



end


private

def find_product
  @product = Product.find(params[:id])
end

def product_params
  params.require(:product).permit(:name, :description, :category, :price, :picture)
end

end
