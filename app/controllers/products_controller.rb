class ProductsController < ApplicationController
   before_action :find_product, only: [:update, :destroy]


     def index

       render json: Product.all

     end

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



  def show
    render json: Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      render json: {
        status: :updated
      }
    end
  end

def destroy
    if(@product.destroy)
      render json: {
        status: :deleted
      }
    end
end


def trendings
  render json: Product.trendings
end

def fetch_category
  render json: Product.where(category: params[:category])
end


private

def find_product
  @product = Product.find(params[:id])
end

def product_params
  params.permit(:name, :description, :category, :price, :user_id, :picture)
end

end
