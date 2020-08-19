class ProductsController < ApplicationController
   before_action :find_product, only: [:destroy]

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

    render json: Product.all
    

  end

  def show
    render json: Product.find(params[:id])
  end

def destroy
    if(@product.destroy)
      render json: {
        status: :deleted
      }
    end
end

private

def find_product
  @product = Product.find(params[:id])
end

def product_params
  params.require(:product).permit(:name, :description, :category, :price, :picture)
end

end
