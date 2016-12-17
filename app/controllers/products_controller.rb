class ProductsController < ApplicationController
  before_action :set_product, except: [:index]

  def index
    @products = Product.all
  end

  def show
  end

  def add_to_cart
    if ProductToCart.new(current_user, @product).add
      head :ok
    else
      head :unprocessable_entity
    end
  end

  private

  def set_product
    @product = Product.find_by(id: params[:id])
  end

end
